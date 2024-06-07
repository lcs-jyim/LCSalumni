//
//  helpers.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/6.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
    supabaseURL:URL(string: "https://qtmhzackzkpuvjvxadac.supabase.co")!, supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF0bWh6YWNremtwdXZqdnhhZGFjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc2MDQ0ODUsImV4cCI6MjAzMzE4MDQ4NX0.22l3cr_aRqtJzUxtDI9QuQACWkzGfLAkANccoPOwhKE")
