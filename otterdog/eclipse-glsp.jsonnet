local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('ecd.glsp', 'eclipse-glsp') {
  settings+: {
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('glsp') {
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      description: "Graphical language server platform for building web-based diagram editors",
      has_discussions: true,
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
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
      workflows+: {
        default_workflow_permissions: "write",
      },
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
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_security_updates_enabled: true,
      description: "Web-based client framework of the graphical language server platform",
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
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
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-core') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      dependabot_security_updates_enabled: true,
      description: "Core framework (web-based client and TypeScript/Node server) of the graphical language server platform",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
      topics+: [
        "diagram",
        "diagram-editor",
        "diagramming",
        "glsp",
        "graphical-modeling",
        "graphical-models",
        "lsp",
        "lsp-server",
        "node",
        "sprotty",
        "typescript",
        "web-based"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
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
    orgs.newRepo('glsp-eclipse-integration') {
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: false,
      description: "Integration of the web-based GLSP client with Eclipse",
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
      topics+: [
        "diagram-editors",
        "diagramming",
        "eclipse",
        "graphical-modeling",
        "java"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-examples') {
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_security_updates_enabled: true,
      description: "Example diagram editors built with Eclipse GLSP",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "pages-test",
      gh_pages_source_path: "/docs",
      homepage: "https://www.eclipse.dev/glsp",
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
      workflows+: {
        default_workflow_permissions: "write",
      },
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
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: false,
      description: "End-to-end testing library for Eclipse GLSP diagrams",
      homepage: "https://www.eclipse.dev/glsp",
      topics+: [
        "diagram-editor",
        "diagramming",
        "end-to-end-testing",
        "glsp",
        "playwright"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('TOKEN') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-previews') {
      allow_update_branch: false,
      default_branch: "previews",
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: false,
      description: "Hosting of GLSP example, PR, and website previews",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "previews",
      gh_pages_source_path: "/",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "previews"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('glsp-server') {
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_security_updates_enabled: true,
      description: "Java-based server framework of the graphical language server platform",
      has_wiki: false,
      homepage: "https://www.eclipse.dev/glsp",
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
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-server-node') {
      allow_update_branch: false,
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: false,
      description: "Node-based server framework of the graphical language server platform",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      homepage: "https://www.eclipse.dev/glsp",
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
      workflows+: {
        default_workflow_permissions: "write",
      },
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
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_security_updates_enabled: true,
      description: "Integration of the web-based GLSP client with Eclipse Theia",
      homepage: "https://www.eclipse.dev/glsp",
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
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-vscode-integration') {
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: false,
      description: "Integration of the web-based GLSP client with VSCode",
      homepage: "https://www.eclipse.dev/glsp",
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
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
        },
      ],
    },
    orgs.newRepo('glsp-website-source') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: true,
      dependabot_security_updates_enabled: true,
      description: "The website for GLSP",
      homepage: "https://www.eclipse.dev/glsp",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
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
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}
