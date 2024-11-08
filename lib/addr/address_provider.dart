import 'package:hooks_riverpod/hooks_riverpod.dart'; // Riverpodの状態管理をインポート

// 状態を保持する住所プロバイダ
final addressProvider = StateProvider<String>((ref) => ''); // 初期値は空文字
