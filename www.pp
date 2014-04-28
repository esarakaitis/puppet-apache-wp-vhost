class hosts::www {
    	include apache
	apache::vhost { 'domain.net':
        port => '80',
        docroot => '/opt/wordpress',
	directories => [
		{ path	=> '/opt/wordpress',
		allow_override => ['All'],
		},
		],
} 
}

