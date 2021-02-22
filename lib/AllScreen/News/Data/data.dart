class Article {
  String image;
  String title;
  String description;
  String time;
  String author;
  String category;
  String authorImg;

  Article({
    this.image,
    this.title,
    this.description,
    this.time,
    this.author,
    this.category,
    this.authorImg,
  });
}

final List<Article> trendingNews = [
  Article(
    category: 'Elderly News',
    title: 'อยากสูงวัยอย่างมีคุณภาพ ต้องเตรียมพร้อม 4 ด้านก่อนเกษียณ',
    description:
        'ประเทศไทยกำลังเข้าสู่สังคมสูงวัยคือ จะมีประชากรกลุ่มคนสูงวัยมากกว่าวัยอื่น นั่นแปลว่าผู้สูงวัยบางคนอาจจะไม่มีลูกหลานหรือญาติมิตรให้พึ่งพิงเลยก็เป็นได้ ดังนั้น คนที่กำลังย่างเข้าสู่วัยที่เรียกว่า “สูงวัย” ซึ่งปัจจุบันคือ กลุ่มคนวัยทำงานที่ใกล้เกษียณจึงควรเตรียมความพร้อมให้ดี ๆ เพื่อจะได้ใช้ชีวิตสูงวัยอย่างมีคุณภาพ',
    time: '1hr ago',
    author: 'Sky News',
    image: 'assets/trump.jpg',
    authorImg: 'assets/skyNews.png',
  ),
  Article(
    category: 'Business News',
    title: 'JRE on Spotify',
    description:
        'ปัจจุบันประชากรผู้สูงอายุในประเทศไทยมีจำนวนกว่า 12 ล้านคน โดยไทยจะเป็นสังคมผู้สูงอายุโดยสมบูรณ์ในปี 2567 และกลายเป็นสังคมผู้สูงอายุระดับสุดยอดในปี 2575 ซึ่งมีสัดส่วนจำนวนผู้สูงอายุที่มีอายุ 65 ปีขึ้นไป อยู่ที่ 14% และ 20% ของจำนวนประชากรทั้งหมดตามลำดับ ทำให้ธุรกิจเพื่อผู้สูงอายุเป็นกลุ่มธุรกิจที่มีศักยภาพ และมีโอกาสในการขยายตลาดเพื่อรองรับสังคมผู้สูงอายุในอนาคตอันใกล้',
    time: '2hr ago',
    author: 'Spotify',
    image: 'assets/joeRogan.jpg',
    authorImg: 'assets/spotify.png',
  ),
  Article(
    category: 'Sports',
    title: 'Jadon Sancho Transfer News',
    description:
        'Jadon Sancho transfer rumors are growing as we move towards the winter break. Despite Borussia Dortmund’s fans’ feelings, big European clubs like Paris Saint-Germain, Real Madrid, Liverpool, and Manchester United are all interested in the services of the 19 years old English international.According to Marca.com, Real Madrid and Liverpool joined the race to sign the talented Borussia Dortmund player in the summer. Manchester United’s interest in the young forward is a little bit older.',
    time: '3hr ago',
    author: 'Sky News',
    image: 'assets/sancho.jpg',
    authorImg: 'assets/skyNews.png',
  ),
  Article(
    category: 'politics',
    title: 'Biden anti-trans violence',
    description:
        'Democratic presidential nominee Joe Biden called the violence against transgender and gender-nonconforming people an “epidemic that needs national leadership” and accused the Trump administration of fueling “the flames of transphobia.”',
    time: '1hr ago',
    author: 'Sky News',
    image: 'assets/biden.jpg',
    authorImg: 'assets/skyNews.png',
  ),
];

final List<Article> forYou = [
  Article(
    category: 'Sports',
    title: 'CR7 unlikely to face Barcelona',
    description:
        'Juventus will take on Barcelona in Matchday 2 of their Champions League group next Wednesday, but they\'ll likely be without Cristiano Ronaldo for that match. The Portuguese forward tested positive for COVID-19 during the international break and has tested positive again.',
    time: '30min ago',
    author: 'Sky News',
    image: 'assets/cr7.jpg',
    authorImg: 'assets/skyNews.png',
  ),
  Article(
    category: 'Entertainment',
    title: 'JRE on Spotify',
    description:
        'Joe Rogan—America’s most popular podcaster—has officially debuted on Spotify. The longtime comedian and mixed martial arts announcer made “The Joe Rogan Experience” available to Spotify subscribers on Tuesday.',
    time: '2hr ago',
    author: 'Spotify',
    image: 'assets/joeRogan2.jpg',
    authorImg: 'assets/spotify.png',
  ),
  Article(
    category: 'Sports',
    title: 'Lionel Messi sets new record ',
    description:
        'Lionel Messi became the first player to score in 16 consecutive Champions League seasons as he guided 10-man Barcelona to a 5-1 victory over Hungarian side Ferencvaros in their Group G opener at the Camp Nou on Tuesday.',
    time: '3hr ago',
    author: 'Sky News',
    image: 'assets/messi.jpg',
    authorImg: 'assets/skyNews.png',
  ),
  Article(
    category: 'politics',
    title: 'Biden anti-trans violence',
    description:
        'Democratic presidential nominee Joe Biden called the violence against transgender and gender-nonconforming people an “epidemic that needs national leadership” and accused the Trump administration of fueling “the flames of transphobia.”',
    time: '1hr ago',
    author: 'Sky News',
    image: 'assets/biden2.jpg',
    authorImg: 'assets/skyNews.png',
  ),
];
