import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final SupabaseService _instance = SupabaseService._internal();
  factory SupabaseService() => _instance;

  SupabaseService._internal();

  late final SupabaseClient client;

  /// Call this ONCE in main() before using Supabase anywhere
  Future<void> init() async {
    final supabase = await Supabase.initialize(
      url: 'https://uurihaqkkpddenexzxrp.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV1cmloYXFra3BkZGVuZXh6eHJwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjM3MzI0MTAsImV4cCI6MjA3OTMwODQxMH0.S8JCfBVY7opjzt7fmr5421Z8QrwhwCTz8Y6iAx9Pg6Q',
    );

    client = supabase.client;
  }
}
