readme_generator= {
    my_generator : { //Thank you @JFusco
      options: {
        // Task-specific options go here.
        // detailed explanation is under options
        // Default options:
        readme_folder: "readme",
        output: "README.md",
        table_of_contents: true,
        toc_extra_links: [],
        generate_changelog: false,
        changelog_folder: "changelogs",
        changelog_version_prefix: null,
        changelog_insert_before: null,
        banner: null,
        has_travis: true,
        github_username: "aponxi",
        travis_branch: "master",
        generate_footer: true,
        generate_title: true,
        package_title: null,
        package_name: null,
        package_desc: null,
        informative: true,
        h1: "#",
        h2: "##",
        back_to_top_custom: null
      },
      order: {
        // Title of the piece and the File name goes here
        // "Filename" : "Title"
        "installation.md": "Installation",
        "usage.md": "Usage",
        "options.md": "Options",
        "example.md": "Example",
        "output.md": "Example Output",
        "building-and-testing.md": "Building and Testing",
        "legal.md": "Legal Mambo Jambo"
      }
    }
  }