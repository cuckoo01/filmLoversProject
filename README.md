![Admin_Login](https://github.com/user-attachments/assets/ee7fc5e8-eeeb-485f-8dc4-78ecb9e35eaa)![filmList](https://github.com/user-attachments/assets/465e0bab-a2fd-421c-b4d9-97a49864f9cd)![SignUp](https://github.com/user-attachments/assets/dc5c0bfc-523a-41be-bc58-942b83c5bd47)# 🎬 Film Lovers

## Mẫu giáo tập code - Group members:
- Nguyễn Thị Bích Duyên - SE183629
- Trương Quang Hiếu Trung - SE183255
- Nguyễn Gia Bảo Anh - SE183425
- Võ Thị Mai Hoa - SE183659

## 1. Requirement: 
### Target users: Film viewers who want to hold the latest information, ratings and reviews of films, tv series, movies...

## Description

- An online web application for viewing latest film information (summaries, trivia, quotes, images..), as well as contributing data, reviews and ratings.   
- This website is focused on creating good users experience in finding/filtering shows and movies, also providing a visually appealing and user-friendly interface for displaying useful information.   
- Accounts are divided into two roles: **Admin** and **User**. If the viewer doesn't login, they are identified as **Guest**.   

### Features

#### Guest:   
- Register for User account: Google account, Facebook account, Register manually (username, email, password)   
- View shows and movies list, information and reviews from Users   
- Change language on page (EN, VI)   
- Change website theme (Dark mode, Light mode)   
- Search for shows and movies by Name   
- Filter the shows and movies by Type, Genre, Country, Release year, Ratings   
- Sort the list in Alphabetical order, Release year order, Ratings order   

#### Subscriber:
- Login: Google account, manually   
- All Guest's features   
- Can see '**View History**': a list of 20 films that user viewed recently    
- Create different **Watchlists** then add, view and remove shows and movies from them   
- Give ratings for shows and movies    
- Leave comments, edit and delete their own comments   
- Like and dislike, report comments of others
- **Contribute** shows and movies based on given form   
- Log out   

#### Admin:
- Login: Google account, manually   
- All Guest's features   
- Create or delete shows and movies, add and update their descriptions, information   
- View users' accounts' details, change account status (able/disable)   
- Approve or disapprove Users' edit suggestions   
- Get the list of comments that are reported by Users, can choose to delete or keep them
- Log out   

## 2.GUI
<details>
  <summary>Click me</summary><br>
  
  ### 2.1. Common Pages
  
#### a. Sign in & Sign up:
![SignIn](https://github.com/user-attachments/assets/ce9c81db-ad35-4db1-9235-44366084f2a7)
![SignUp](https://github.com/user-attachments/assets/6bd85deb-4feb-4d7b-9866-855f37d96e48)

#### b. Home page
![landingPage](https://github.com/user-attachments/assets/0b9e43b0-d113-4ef2-af45-a5f9664f0638)

#### c. Trending films 
![filmList](https://github.com/user-attachments/assets/0dcd688c-2bfb-4570-b777-1b08854c5252)

#### d. Film details and Reviews
![filmInfo](https://github.com/user-attachments/assets/9d31ffd0-2344-43ca-9847-2e19bb9a67ba)

#### e. Film cast details
![fullCast](https://github.com/user-attachments/assets/0cb179d2-8fb3-46bf-9be0-6b07db790a52)


### 2.2. Admin Pages

#### a. Login
![Admin_Login](https://github.com/user-attachments/assets/6cc9ac48-c418-401c-9bbf-8a6964382a3a)

#### b. Dashboard
![HomePage](https://github.com/user-attachments/assets/2f1163c6-8f35-47e4-94e6-e4b2dd020cae)

#### c. Movie Database
![MovieListPage](https://github.com/user-attachments/assets/f6e900b8-4f2d-4254-86b8-eaea4654d4ae)

#### d. Add new movie
![Show](https://github.com/user-attachments/assets/13015024-efe6-466a-b15e-cafe6429db57)

#### e. Manage users
![UserMangementPage_Admin](https://github.com/user-attachments/assets/a2d197e0-8e53-408c-91d1-e56f4885c77a)

#### f. Manage comments
![CommentPage_Admin](https://github.com/user-attachments/assets/c7e8bf87-bfba-433c-9e88-3c9bd00d8ca3)
</details>


## 3. Database Design
<details>
  <summary>Click me</summary><br>
![FilmLovers-ERD](https://github.com/dunghuynh-teaching/prj301-se1867-06/assets/133933281/4cfecb5d-8b3b-4fb6-accb-2b9c67b1729c)
![FilmLovers-RS](https://github.com/dunghuynh-teaching/prj301-se1867-06/assets/133933281/2d2cb4c7-fb24-4898-9161-3db557b28665)
</details>

## 4. System Design
### a. Project Structure:

![system_design](https://github.com/dunghuynh-teaching/prj301-se1867-06/assets/133933281/98ba0418-4988-441d-abf2-c84a2105cd72)

### b. Flow chart:

![FilmLovers-Flowchart drawio](https://github.com/dunghuynh-teaching/prj301-se1867-06/assets/133933281/8b699f31-6976-42b2-ad31-269e608cf046)

## 5. Conclusion
With the team effort, we have delivered some features of the website:

- Manage multiple models with CRUD functions: Film, Genre, Actor, Video, Photo, Rating, Contribution,...

- Account:
    + Create, view, update, delete user account;
    + Implement Password Hashing function for better security.
      
- Film:
    + Create, view, update, delete, search and filter Films by multiple conditions;
    + Implement Pagination from database for better performance when searching/viewing
    + Use Firebase Cloud storage for data storing (film's photo, user's photo).

- Watchlist:
    + Create many playlist to watch laterr
    + Add favourite films to the playlist
 
- Contribution:
    + Allow users to contribute new films or contribute videos, genres and photos to a existed film
    + Admin check the contribution after user submitted to publish the contribution to the website or reject it

During the coding time, we also spent much time to provide good UI for the functions above.

However, due to our lack of time and skill, we have yet hit the threshold of a smoothly well functioning website:
- Haven't organized the project structure carefully from the start, which leads to inefficient coding process, difficulties in developing and maintaining in the future.
- Many flaws in user flow (Example: only annouce to user but not sending email for them after admin checking contribution)
- Unfinished views (Example: WatchList view in the Landing Page)
- Some unstable methods (Example: Edit Profile View)

And now that we have submitted our assignment, we can reflect on our progress. 
Throughout this project, we learned and strengthened our knowledge not only in tools like Figma, Git, Github, but also in coding techniques and mindset, both front-end and back-end. Looking further, it was all thanks to the advice and feedback of our lecturer that we could see the problems more clearly and figure out the solutions. We are deeply grateful for his help in this tough semester. This is a valuable experience that help us to further our careers in this field. 

