import 'dart:io';

Future<ProcessResult> switchToPages() async => await Process.run('git', ['switch', 'pages']);

Future<void> cleanup() async {
  try {
    await Process.run('rm', ['-rf', 'build/jaspr/.dart_tool', 'build/jaspr/packages', 'build/jaspr/.build.manifest']);
  } catch (e) {
    throw Exception('Failed to cleanup jaspr build: $e');
  }
}

Future<void> dotDomains() async {
  try {
    await File('build/jaspr/.domains').writeAsString('duet.llc');
  } catch (e) {
    throw Exception('Failed to create .domains: $e');
  }
}

Future<void> add() async {
  try {
    await Process.run('git', ['--work-tree=build/jaspr', 'add', '.']);
  } catch (e) {
    throw Exception('Failed to add build files to git: $e');
  }
}

Future<void> commit() async {
  try {
    await Process.run('git', ['--work-tree=build/jaspr', 'commit', '-m', 'Publish pages']);
  } catch (e) {
    throw Exception('Failed while committing changes: $e');
  }
}

Future<void> publish() async {
  try {
    await Process.run('git', ['push', '-u', 'origin', 'pages']);
  } catch (e) {
    throw Exception('Failed while publishing the changes: $e');
  }
}

Future<ProcessResult> switchBack() => Process.run('git', ['switch', '--force', '-']);

void main() async {
  await switchToPages();
  try {
    await cleanup();
    await dotDomains();
    await add();
    await commit();
    await publish();
  } finally {
    await switchBack();
  }
}
