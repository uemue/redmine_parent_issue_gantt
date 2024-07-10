# Redmine Parent Issue Gantt Plugin

## Overview

The Redmine Parent Issue Gantt Plugin enhances the Gantt chart view by including parent issues along with their child issues. This addresses the problem where filtering by assignee or other criteria causes only child issues to be displayed, making it difficult to understand the overall project structure.

## Features

- Displays parent issues in the Gantt chart when specified, improving visibility and understanding of project dependencies and hierarchy.

## Warning

**Important**: This plugin contains an N+1 query issue. It is not recommended for use in large projects as it may significantly impact performance.

## Installation

1. Clone the repository into your Redmine plugins directory:

   ```sh
   git clone https://github.com/uemue/redmine_parent_issue_gantt.git plugins/redmine_parent_issue_gantt
   ```

2. Restart your Redmine instance.

## Usage

Once the plugin is installed, the Gantt chart will include parent issues when displaying child issues only if the URL ends with the parameter `?include_parent_issues=1`. This is provided as a hidden feature to prevent performance degradation due to the N+1 query issue.

## Compatibility

- Tested with Redmine version 5.0.3
- Not recommended for large projects due to performance issues related to the N+1 query problem.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have any improvements or bug fixes.

## License

This plugin is open-source and available under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Acknowledgments

- Thanks to the Redmine community for their support and contributions.

## Contact

For any questions or support, please open an issue on the [GitHub repository](https://github.com/uemue/redmine_parent_issue_gantt).
