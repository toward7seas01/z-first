task :g do
  tag = STDIN.gets()
  system("git add .")
  system("git commit -a -m #{tag}")
  system("git tag #{tag}")
  system("git status")
end
