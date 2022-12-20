module.exports = {
  pathPrefix: '/',
  siteUrl: 'https://simonegli.com',
  title: 'Simon Egli',
  description: 'e-portfolio of Simon Egli',
  author: 'Simon Egli',
  introduction: [
    'Hi! My name is Simon, and this is my e-Portfolio for the M.Sc Data Science at the University of Essex. I am a science enthusiast and love to build things. Today, I am a Data Architect at [Bucher+Suter](https://bucher-suter.com) and create the data platform which drives data-driven decision-making in the company.',
    'This site was built using [Gatsby](https://www.gatsbyjs.com/) and the academic template provided by [tc-imba](https://github.com/tc-imba/gatsby-theme-academic).',
  ],
  avatar: 'pass.jpg',
  professions: [
    'Software Architect',
    'Data Architect',
  ],
  tocMaxDepth: 2,
  excerptMaxLength: 500,
  // birthday: 'Some day',
  location: 'Switzerland',
  email: 'simon-egli@bluewin.ch',
  postsForArchivePage: 3,
  defaultLanguage: 'en',
  // disqusScript: process.env.DISQUS_SCRIPT
  //   || 'https://tc-imba.disqus.com/embed.js',
  pages: {
    home: '/',
    posts: 'posts',
    contact: 'contact',
    resume: 'resume',
    tags: 'tags',
    research: 'research',
  },
  social: [
    {
      url: 'https://github.com/simologos',
      icon: ['fab', 'github'],
    },
  ],
  education: [
    {
      date: 'Aug 2022 - Present',
      icon: 'graduation-cap',
      title: 'M.Sc Data Science',
      location: 'University of Essex, Online',
    }, {
      date: 'Aug 2017 - Aug 2022',
      icon: 'graduation-cap',
      title: 'B.Sc Computer Science',
      location: 'Swiss Distance University of Applied Sciences, Bern',
    }, {
      date: 'Aug 2016 - May 2017',
      icon: 'university',
      title: 'Entrance examination',
      location: 'Swiss Distance University of Applied Sciences, Bern',
    }, {
      date: 'Aug 2006 - Aug 2010',
      icon: 'school',
      title: 'Vocational School',
      location: 'Berufsfachschule, Langenthal',
    },
  ],
  interests: [
    {
      icon: 'analytics',
      title: 'Data Science',
    }, {
      icon: 'project-diagram',
      title: 'Software Architecture',
    }, {
      icon: 'business-time',
      title: 'Agile management',
    },
  ],
  experience: [
    {
      title: 'Work',
      position: 'left',
      data: [
        {
          date: 'May 2022 - Present',
          title: 'Data Architect',
          location: 'Bucher + Suter AG, Worblaufen',
        }, {
          date: 'Apr 2018 - May 2022',
          title: 'Technical Architect',
          location: 'Bucher + Suter AG, Worblaufen',
        }, {
          date: 'Aug 2011 - Apr 2018',
          title: 'Software Developer',
          location: 'Bucher + Suter AG, Worblaufen',
        }, {
          date: 'Aug 2010 - Aug 2011',
          title: 'Customer Service Engineer',
          location: 'Bucher + Suter AG, Worblaufen',
        }, {
          date: 'Aug 2007 - Aug 2010',
          title: 'Trainee computer science',
          location: 'Bern University of Applied Science, Burgdorf',
        }, {
          date: 'Aug 2006 - Aug 2007',
          title: 'Basic year of training',
          location: 'Berufsbildungscenter, Bern',
        },
      ],
    }, {
      title: 'Certifications',
      position: 'right',
      data: [
        {
          date: 'Dec 2022',
          title: 'Certified SAFe 5 Product Owner/Product Manager',
          location: 'Online',
        },
        {
          date: 'Sept 2022',
          title: 'AWS Certified Solutions Architect - Associate',
          location: 'Online',
        }, {
          date: 'Aug 2019',
          title: 'Microsoft Certified Solutions Developer (MCSD)',
          location: 'Bern',
        }, {
          date: 'June 2019',
          title: 'iSAQB Certified Professional for Software Architecture (CPSA-F)',
          location: 'Bern',
        }, {
          date: 'Jan 2019',
          title: 'IREB Certified Professional for Requirements Engineering (CPRE-FL)',
          location: 'Bern',
        }, {
          date: 'Jan 2018',
          title: 'Red Hat Certified System Administrator (RHCSA)',
          location: 'Dübendorf',
        }, {
          date: 'Aug 2017',
          title: 'Cambridge English CEFR Level B2 (First)',
          location: 'Bern',
        },
      ],
    }, {
      title: 'Private life',
      position: 'left',
      data: [
        {
          date: 'Apr 2011 - Present',
          title: 'Sound Engineer at [HardBeat](https://www.hardbeat.ch)',
          location: 'Bern',
        }, {
          date: 'March 2008 - Present',
          title: 'Family father',
          location: 'Bern',
        }, {
          date: 'May 2006 - Jan 2021',
          title: 'Bass Player at [Defaced](https://www.defaced.ch)',
          location: 'Bern',
        },
      ],
    },
  ],
  awards: [],
  tagColors: [
    'magenta', 'red', 'volcano', 'orange', 'gold',
    'lime', 'green', 'cyan', 'blue', 'geekblue', 'purple',
  ],
  tags: [],
};
