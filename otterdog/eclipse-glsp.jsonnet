local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-glsp') {
  settings+: {
    default_repository_permission: "none",
    default_workflow_permissions: "write",
    dependabot_alerts_enabled_for_new_repositories: false,
    dependabot_security_updates_enabled_for_new_repositories: false,
    dependency_graph_enabled_for_new_repositories: false,
    members_can_change_project_visibility: false,
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('glsp') {
      allow_merge_commit: false,
      allow_update_branch: false,
      default_branch: "master",
      description: "Graphical language server platform for building web-based diagram editors",
      has_discussions: true,
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram",
        "diagram-editors",
        "eclipse",
        "glsp",
        "graphical-models",
        "lsp",
        "lsp-server",
        "protocol",
        "sprotty",
        "theia",
        "theia-extension",
        "vscode"
      ],
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('AUTHTOKEN') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-client') {
      allow_merge_commit: false,
      allow_update_branch: false,
      default_branch: "master",
      dependabot_security_updates_enabled: true,
      description: "Web-based client framework of the graphical language server platform",
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram",
        "diagram-editor",
        "diagramming",
        "glsp",
        "graphical-modeling",
        "graphical-models",
        "lsp",
        "sprotty",
        "web-based"
      ],
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-eclipse-integration') {
      allow_merge_commit: false,
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      description: "Integration of the web-based GLSP client with Eclipse",
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram-editors",
        "diagramming",
        "eclipse",
        "graphical-modeling",
        "java"
      ],
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-examples') {
      allow_merge_commit: false,
      allow_update_branch: false,
      default_branch: "master",
      dependabot_security_updates_enabled: true,
      description: "Example diagram editors built with Eclipse GLSP",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "pages-test",
      gh_pages_source_path: "/docs",
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram",
        "diagram-editors",
        "eclipse-theia",
        "graphical-models",
        "lsp",
        "lsp-server",
        "sprotty",
        "theia",
        "theia-extension"
      ],
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "pages-test"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('glsp-playwright') {
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "End-to-end testing library for Eclipse GLSP diagrams",
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram-editor",
        "diagramming",
        "end-to-end-testing",
        "glsp",
        "playwright"
      ],
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('TOKEN') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-server') {
      allow_merge_commit: false,
      allow_update_branch: false,
      default_branch: "master",
      dependabot_security_updates_enabled: true,
      description: "Java-based server framework of the graphical language server platform",
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram",
        "diagram-editor",
        "emf",
        "glsp",
        "graphical-modeling",
        "graphical-models",
        "java",
        "lsp",
        "lsp-server",
        "modeling-tools"
      ],
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-server-node') {
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Node-based server framework of the graphical language server platform",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram",
        "diagram-editor",
        "glsp",
        "graphical-modeling",
        "graphical-models",
        "lsp",
        "lsp-server",
        "node",
        "typescript"
      ],
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: 0,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('glsp-theia-integration') {
      allow_merge_commit: false,
      allow_update_branch: false,
      default_branch: "master",
      dependabot_security_updates_enabled: true,
      description: "Integration of the web-based GLSP client with Eclipse Theia",
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram",
        "diagram-editor",
        "eclipse-theia",
        "glsp",
        "graphical-models",
        "lsp",
        "theia",
        "theia-ide",
        "theia-language-extension"
      ],
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-vscode-integration') {
      allow_merge_commit: false,
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      description: "Integration of the web-based GLSP client with VSCode",
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "diagram-editors",
        "diagramming",
        "glsp",
        "graphical-modeling",
        "language-server-protocol",
        "lsp",
        "vscode",
        "vscode-extension"
      ],
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-website') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-website-source') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_security_updates_enabled: true,
      description: "The website for GLSP",
      homepage: "https://www.eclipse.dev/glsp",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      secrets: [
        orgs.newRepoSecret('GH_ACTION_TOKEN') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
  ],
}
