CREATE DATABASE cau_db default CHARACTER SET UTF8;
USE cau_db;

-- 과목 테이블 생성
CREATE TABLE subject (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

-- 과목 삽입
INSERT INTO subject (name) VALUES
('기초프로젝트랩'),
('어드벤쳐디자인'),
('심화프로젝트랩'),
('종합설계'),
('창업실습4'),
('창업실습3'),
('창업실습2'),
('창업실습1'),
('현장실습'),
('상업논술'),
('실무프로젝트랩3'),
('실무프로젝트랩2'),
('실무프로젝트랩1'),
('컴퓨터네트워크'),
('알고리즘응용'),
('운영체제 및 실습'),
('데이터베이스'),
('데이터베이스설계'),
('데이터과학'),
('시스템프로그래밍'),
('논리회로'),
('AI활용 표현과 문제해결'),
('AI 소프트웨어'),
('컴퓨터프로그래밍3'),
('선형대수'),
('이산수학'),
('디지털 VLSI'),
('분산시스템'),
('정보보호'),
('이동통신'),
('네트워크및웹보안'),
('인간-컴퓨터 상호작용'),
('인공지능SoC설계'),
('딥러닝'),
('임베디드소프트웨어'),
('최신컴퓨터특강'),
('컴퓨터네트워크설계'),
('소프트웨어및시스템보안'),
('컴파일러개론'),
('기계학습'),
('공개소프트웨어실습'),
('디지털시스템설계'),
('소프트웨어공학'),
('컴퓨터그래픽스'),
('데이터통신'),
('전자회로'),
('영상처리'),
('프로그래밍언어개론'),
('수치프로그래밍'),
('웹프로그래밍'),
('상업교육론'),
('디지털신호처리'),
('계산이론');

-- 직종 테이블 생성
CREATE TABLE job (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    salary VARCHAR(50) NOT NULL
);

-- 직종 데이터 삽입
INSERT INTO job (name, description, salary) VALUES
('백엔드 개발자', '웹 애플리케이션의 서버 측을 개발하는 개발자로, 데이터베이스와 서버 로직을 구현하며 Python, Java, Node.js 등을 사용합니다.', '약 5,000만 ~ 8,000만 원'),
('프론트엔드 개발자', '웹사이트의 사용자 인터페이스(UI)를 개발하는 개발자로, HTML, CSS, JavaScript와 같은 기술을 사용하여 사용자 친화적인 화면을 구현합니다.', '약 4,500만 ~ 7,000만 원'),
('풀스택 개발자', '프론트엔드와 백엔드를 모두 다루는 개발자로, 전반적인 웹 애플리케이션 개발을 책임지며 다양한 기술 스택을 활용합니다.', '약 5,500만 ~ 9,000만 원'),
('모바일 개발자', '스마트폰 및 태블릿용 애플리케이션을 개발하는 개발자로, Android(Java, Kotlin) 또는 iOS(Swift) 플랫폼에서 앱을 개발합니다.', '약 5,000만 ~ 8,500만 원'),
('데이터 엔지니어', '데이터 파이프라인을 구축하고 관리하는 전문가로, 데이터의 수집, 저장, 처리 과정을 설계하며 빅데이터 기술을 활용합니다.', '약 6,000만 ~ 9,000만 원'),
('게임 개발자', '비디오 게임을 개발하는 개발자로, 게임 기획, 프로그래밍, 그래픽을 통합하여 게임 콘텐츠를 구현합니다.', '약 4,500만 ~ 8,000만 원'),
('인공지능(AI) 개발자', '인공지능 알고리즘을 설계하고 구현하여 기계 학습 및 딥러닝 모델을 개발하는 전문가입니다.', '약 6,500만 ~ 1억 원'),
('머신러닝 엔지니어', '머신러닝 알고리즘을 구축하고 모델을 학습시키는 엔지니어로, 데이터 분석과 알고리즘 최적화에 중점을 둡니다.', '약 6,500만 ~ 1억 원'),
('데브옵스(DevOps) 엔지니어', '개발(Development)과 운영(Operations)을 통합하여 소프트웨어의 개발 및 배포를 자동화하고 효율성을 높이는 역할을 합니다.', '약 5,500만 ~ 9,500만 원'),
('사물인터넷(IoT) 개발자', '인터넷으로 연결된 장치 간의 통신을 위한 소프트웨어를 개발하며, 센서와 네트워크를 이용한 데이터 수집 및 처리를 담당합니다.', '약 5,000만 ~ 8,500만 원'),
('클라우드 엔지니어', '클라우드 인프라의 설계, 구축, 유지보수를 담당하며, AWS, Azure, Google Cloud와 같은 클라우드 플랫폼에서 작업합니다.', '약 6,000만 ~ 9,500만 원'),
('블록체인 개발자', '블록체인 기술을 기반으로 한 애플리케이션을 개발하며, 스마트 컨트랙트를 설계하고 구현합니다.', '약 5,500만 ~ 9,000만 원'),
('로보틱스 소프트웨어 개발자', '로봇 시스템을 제어하고 소프트웨어를 개발하여 자율 동작을 구현하며, 주로 로보틱스 관련 알고리즘을 다룹니다.', '약 6,000만 ~ 9,500만 원'),
('웹 개발자', '웹사이트 전반을 개발하며, 클라이언트 측과 서버 측을 모두 개발하여 웹 애플리케이션을 완성합니다.', '약 4,500만 ~ 7,500만 원'),
('API 개발자', '다른 소프트웨어와의 상호작용을 위한 API(Application Programming Interface)를 개발하고 관리합니다.', '약 5,000만 ~ 8,500만 원'),
('시스템 소프트웨어 개발자', '운영체제, 데이터베이스 관리 시스템 등의 시스템 소프트웨어를 개발하여 하드웨어와 소프트웨어 간의 인터페이스를 제공합니다.', '약 6,000만 ~ 1억 원'),
('보안 소프트웨어 개발자', '시스템의 보안성을 높이기 위한 소프트웨어를 개발하고, 네트워크 및 데이터 보호를 위해 다양한 보안 솔루션을 제공합니다.', '약 5,500만 ~ 9,000만 원'),
('증강현실(AR)/ 가상현실(VR) 개발자', '증강현실 및 가상현실 애플리케이션을 개발하며, 3D 모델링, 센서 데이터 통합 등을 통해 몰입형 콘텐츠를 제공합니다.', '약 5,500만 ~ 9,500만 원'),
('BI(Business Intelligence) 개발자', '데이터를 분석하고 시각화하여 비즈니스 인사이트를 제공하는 소프트웨어를 개발합니다.', '약 5,000만 ~ 8,500만 원'),
('QA(품질 보증) 자동화 개발자', '소프트웨어의 품질을 보증하기 위한 자동화된 테스트 스크립트를 작성하고 테스트 프로세스를 자동화합니다.', '약 4,500만 ~ 7,500만 원');

-- 대학원 테이블 생성
CREATE TABLE grad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO grad (name) VALUES 
('A'), ('B'), ('C'), ('D'),
('E'), ('F'), ('G');
    
-- 연구 테이블
CREATE TABLE research(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    grad_id INT NOT NULL,
    FOREIGN KEY (grad_id) REFERENCES grad(id)
    );

INSERT INTO research (name, grad_id) VALUES
-- 백엔 연구
('마이크로서비스 아키텍쳐', 1),
('데이터베이스 및 데이터 관리', 2),

-- 프엔 연구
('UI/UX 최적화', 3),
('프론트엔드 프레임워크 비교',4);

-- 기획 과목 테이블
CREATE TABLE planning_subject (
    id INT PRIMARY KEY NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);

-- 기획 과목 데이터 삽입
INSERT INTO planning_subject (id, subject_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 10),
(6, 11),
(7, 12);

-- 창업 과목 테이블
CREATE TABLE startup_subject (
    id INT PRIMARY KEY NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);

-- 창업 과목 데이터 삽입
INSERT INTO startup_subject (id, subject_id) VALUES
(1, 5),
(2, 6),
(3, 7),
(4, 8);

-- 기술 테이블 생성
CREATE TABLE tech(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);
-- 백엔드 개발자 필요한 기술(30개)
INSERT INTO tech (name) VALUES
('Git / GitHub / GitLab'),
('Linux 기본 명령어'),
('CLI (Command Line Interface)'),
('HTTP / HTTPS'),
('REST API 개념'),
('JSON 및 XML'),
('SQL 기본 문법'),
('MySQL 또는 PostgreSQL'),
('데이터베이스 설계'),
('ORM (JPA, Hibernate 등)'),
('JavaScript 기초'),
('Node.js'),
('Express.js'),
('FastAPI'),
('Spring Boot'),
('API 설계 및 문서화 (Swagger 등)'),
('JWT 및 OAuth 인증'),
('세션 및 쿠키 관리'),
('Docker'),
('CI/CD 기본 개념 (Jenkins, GitLab CI)'),
('Kubernetes 기본'),
('Redis 또는 Memcached'),
('RabbitMQ 또는 Kafka'),
('AWS 기본 (S3, EC2, RDS)'),
('모니터링 및 로깅 (ELK Stack, Prometheus)'),
('보안 및 권한 관리'),
('HTTP 상태 코드'),
('고급 설계 패턴'),
('Microservices 아키텍처'),
('클라우드 아키텍처 설계');

-- 프론트엔드 로드맵에 따른 기술 삽입(31~60)
INSERT INTO tech (name) VALUES
('HTML 기본'),
('CSS 기본'),
('JavaScript 기초'),
('DOM 조작'),
('Git / GitHub'),
('Responsive Design'),
('CSS Flexbox'),
('CSS Grid'),
('Bootstrap 또는 Tailwind CSS'),
('Webpack 또는 Vite'),
('Babel'),
('ES6+ 문법'),
('AJAX / Fetch API'),
('JSON 데이터 처리'),
('API 통신'),
('JavaScript 비동기 처리 (Promises, Async/Await)'),
('React 기본'),
('React Router'),
('Redux 또는 Context API'),
('Vue.js 기초'),
('Vue Router'),
('Component 기반 설계'),
('TypeScript 기본'),
('Testing (Jest, React Testing Library)'),
('Styled Components 또는 Emotion'),
('CSS in JS 기법'),
('웹 접근성 (Accessibility)'),
('SEO 기본'),
('웹 성능 최적화'),
('PWAs (Progressive Web Apps)');

-- 창업 기획에 필요한 기술스택
INSERT INTO tech (name) VALUES
('HTML'),
('CSS'),
('JavaScript'),
('React.js'),
('Node.js'),
('MySQL'),
('AWS'),
('Docker'),
('Git'),
('Figma');

-- 기술 설명 테이블 생성
CREATE TABLE tech_description (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description TEXT NOT NULL,
    tech_id INT NOT NULL,
    FOREIGN KEY (tech_id) REFERENCES tech(id)
);

-- 백엔드 기술 설명 삽입
INSERT INTO tech_description (description, tech_id) VALUES
('Git은 분산 버전 관리 시스템으로, 협업 시 코드 이력을 관리하고 GitHub이나 GitLab을 통해 팀원들과 코드 공유가 가능하다.', 1),
('Linux는 서버 환경에서 주로 사용되는 운영 체제로, 백엔드 개발자가 필수적으로 알아야 할 기본 명령어를 포함한다.', 2),
('CLI는 명령줄 인터페이스로, 백엔드 서버를 조작할 때 필수적인 도구다.', 3),
('HTTP 및 HTTPS는 웹 통신의 프로토콜로, 서버와 클라이언트 간의 데이터 전송 규약이다.', 4),
('REST API는 리소스를 HTTP로 다루는 아키텍처로, 웹 API 설계에 널리 사용된다.', 5),
('JSON 및 XML은 서버와 클라이언트 간 데이터를 주고받을 때 사용하는 형식이다.', 6),
('SQL은 데이터베이스를 조작하기 위한 언어로, 기본 문법을 익히는 것이 중요하다.', 7),
('MySQL 또는 PostgreSQL은 관계형 데이터베이스로, SQL을 이용해 데이터를 관리한다.', 8),
('데이터베이스 설계는 데이터를 효율적으로 저장하고 관리할 수 있도록 데이터 구조를 설계하는 과정이다.', 9),
('ORM은 객체와 데이터베이스의 데이터를 매핑하여 SQL을 사용하지 않고 데이터베이스를 다룰 수 있게 해준다.', 10),
('JavaScript는 서버와 클라이언트 사이의 비동기 처리나 데이터를 다루기 위해 사용되는 기본 프로그래밍 언어다.', 11),
('Node.js는 JavaScript를 서버 측에서 실행할 수 있게 해주는 런타임이다.', 12),
('Express.js는 Node.js 기반의 웹 애플리케이션 프레임워크로, RESTful API를 쉽게 구축할 수 있게 해준다.', 13),
('FastAPI는 Python 기반의 웹 프레임워크로, 빠르고 성능이 우수한 API를 쉽게 구축할 수 있게 해준다.', 14),
('Spring Boot는 Java 기반의 웹 애플리케이션 프레임워크로, 백엔드 API 서버 구축에 널리 사용된다.', 15),
('Swagger는 API 문서화를 위한 도구로, API의 사용법을 문서화하고 테스트할 수 있게 한다.', 16),
('JWT는 JSON Web Token으로, 사용자 인증 시 데이터를 안전하게 주고받는 방식이다.', 17),
('세션과 쿠키는 사용자 상태를 유지하는 기술로, 웹 애플리케이션에서 사용자 인증을 관리하는 데 사용된다.', 18),
('Docker는 애플리케이션을 컨테이너로 배포할 수 있게 해주는 도구로, 개발 환경을 손쉽게 관리할 수 있게 한다.', 19),
('CI/CD는 지속적 통합과 배포의 개념으로, Jenkins나 GitLab CI 등을 통해 자동으로 코드를 배포한다.', 20),
('Kubernetes는 컨테이너 오케스트레이션 도구로, 여러 컨테이너의 배포와 관리를 자동화할 수 있다.', 21),
('Redis와 Memcached는 서버에서 자주 사용하는 캐시 서버로, 데이터를 빠르게 접근할 수 있게 해준다.', 22),
('RabbitMQ와 Kafka는 메시지 큐 시스템으로, 서비스 간 데이터 전송을 비동기적으로 처리할 수 있게 한다.', 23),
('AWS는 클라우드 서비스 제공자로, 백엔드 애플리케이션을 클라우드에 배포할 수 있는 기능을 제공한다.', 24),
('모니터링과 로깅은 서버의 상태와 로그를 기록하여 문제를 해결하고 성능을 개선하는 데 사용된다.', 25),
('보안은 백엔드 애플리케이션의 데이터 보호를 위해 중요한 개념으로, 권한 관리와 데이터 암호화 등을 포함한다.', 26),
('HTTP 상태 코드는 클라이언트가 요청한 결과를 알려주는 코드로, 서버의 상태를 파악할 때 사용된다.', 27),
('고급 설계 패턴은 효율적인 소프트웨어 설계를 위한 여러 패턴으로, 유지보수와 확장성을 고려한다.', 28),
('Microservices는 여러 독립적인 서비스로 구성된 아키텍처로, 각 서비스가 독립적으로 배포되고 유지된다.', 29),
('클라우드 아키텍처 설계는 클라우드 환경에서 애플리케이션을 설계하고 관리하는 방법을 포함한다.', 30);

-- 프론트엔드 기술 설명 삽입
INSERT INTO tech_description (description, tech_id) VALUES
('HTML은 웹 페이지의 구조를 정의하는 마크업 언어로, 기본 태그와 요소들을 사용해 웹 콘텐츠를 구조화한다.', 31),
('CSS는 HTML 요소의 스타일을 지정하는 언어로, 색상, 레이아웃, 폰트 등을 설정해 웹 페이지를 디자인한다.', 32),
('JavaScript는 웹 페이지에 동적인 기능을 추가하는 프로그래밍 언어로, 브라우저와 상호작용을 가능하게 한다.', 33),
('DOM은 문서 객체 모델로, HTML과 CSS 요소들을 JavaScript로 조작할 수 있도록 해준다.', 34),
('GitHub와 같은 Git 저장소는 코드 버전을 관리하고 협업을 가능하게 하며, 여러 개발자와 프로젝트를 쉽게 관리할 수 있게 한다.', 35),
('Responsive Design은 다양한 화면 크기에 맞춰 웹 페이지를 최적화하는 디자인 기법이다.', 36),
('Flexbox는 CSS 레이아웃 모듈로, 박스를 자유롭게 정렬하고 배치할 수 있도록 도와준다.', 37),
('CSS Grid는 2차원 레이아웃 시스템으로, 그리드를 활용해 요소를 배치할 수 있게 한다.', 38),
('Bootstrap과 Tailwind CSS는 빠르게 UI를 개발할 수 있는 CSS 프레임워크로, 반복 작업을 줄여준다.', 39),
('Webpack과 Vite는 모듈 번들러로, 여러 파일을 하나로 합쳐 웹 성능을 개선한다.', 40),
('Babel은 JavaScript 코드의 최신 문법을 구형 브라우저에서도 동작하도록 변환해준다.', 41),
('ES6+ 문법은 JavaScript의 최신 문법으로, 코드 가독성을 높이고 개발을 쉽게 해준다.', 42),
('AJAX와 Fetch API는 비동기적으로 데이터를 서버에서 받아와 웹 페이지를 업데이트할 수 있게 한다.', 43),
('JSON은 서버와의 데이터 전송에 사용되는 가벼운 데이터 형식으로, 객체 형태로 데이터를 표현한다.', 44),
('API 통신은 클라이언트와 서버 간 데이터 요청과 응답을 통해 기능을 구현하는 방법이다.', 45),
('Promises와 Async/Await은 JavaScript의 비동기 처리 방법으로, 콜백 대신 사용해 가독성을 높인다.', 46),
('React는 UI 구축을 위한 JavaScript 라이브러리로, 컴포넌트 기반 아키텍처를 제공한다.', 47),
('React Router는 SPA에서 페이지 간 이동을 관리하는 라이브러리이다.', 48),
('Redux와 Context API는 React에서 상태를 관리하는 방법으로, 애플리케이션의 상태 관리를 단순화한다.', 49),
('Vue.js는 직관적인 API와 양방향 데이터 바인딩을 제공하는 JavaScript 프레임워크다.', 50),
('Vue Router는 Vue.js 애플리케이션의 페이지 이동을 관리한다.', 51),
('컴포넌트 기반 설계는 UI를 재사용 가능한 작은 단위로 나눠 개발하는 방식이다.', 52),
('TypeScript는 JavaScript의 슈퍼셋으로, 정적 타입 검사를 지원해 코드 안정성을 높인다.', 53),
('Jest와 React Testing Library는 JavaScript 애플리케이션의 테스트를 자동화해 코드 품질을 향상시킨다.', 54),
('Styled Components와 Emotion은 CSS-in-JS 라이브러리로, 컴포넌트 수준에서 스타일을 정의한다.', 55),
('CSS in JS는 JavaScript 코드 안에 CSS를 작성하는 방법으로, 컴포넌트와 스타일을 결합한다.', 56),
('웹 접근성은 장애를 가진 사용자가 웹을 쉽게 접근할 수 있도록 하는 방법론이다.', 57),
('SEO는 검색 엔진에서 웹 페이지의 노출을 높이는 기법으로, 웹 사이트의 가시성을 향상시킨다.', 58),
('웹 성능 최적화는 웹 페이지의 로딩 속도와 반응성을 개선하여 사용자 경험을 향상시킨다.', 59),
('PWA는 웹 애플리케이션을 네이티브 앱처럼 사용할 수 있도록 해주는 기술이다.', 60);

-- 기술 하위 테이블(<- 기술 ID)
CREATE TABLE tech_subclass(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT NOT NULL,
    tech_id INT NOT NULL,
	FOREIGN KEY (tech_id) REFERENCES tech(id)
    );

INSERT INTO tech_subclass (name, tech_id) VALUES
-- Git / GitHub / GitLab
('Git 명령어: init, clone, commit, push, pull', 1),
('GitLab CI/CD 설정', 1),
-- Linux 기본 명령어
('파일 관리: ls, cp, mv, rm', 2),
('권한 설정: chmod, chown', 2),
-- CLI (Command Line Interface)
('Bash 스크립트 작성', 3),
('CLI 명령어 자동화', 3),
-- HTTP / HTTPS
('HTTP 상태 코드: 200, 404, 500', 4),
('HTTPS 인증서 설정', 4),
-- REST API 개념
('CRUD: Create, Read, Update, Delete', 5),
('RESTful URL 설계', 5),
-- JSON 및 XML
('JSON 파싱과 직렬화', 6),
('XML 스키마 설계', 6),
-- SQL 기본 문법
('SELECT, INSERT, UPDATE, DELETE 문법', 7),
('JOIN, GROUP BY, HAVING', 7),
-- MySQL 또는 PostgreSQL
('MySQL 쿼리 최적화', 8),
('PostgreSQL 인덱스 사용', 8),
-- 데이터베이스 설계
('ERD(Entity-Relationship Diagram) 설계', 9),
('정규화: 1NF, 2NF, 3NF', 9),
-- ORM (JPA, Hibernate 등)
('JPA Repository 생성', 10),
('Hibernate 캐싱', 10),
-- JavaScript 기초
('ES6+ 문법: let, const, arrow function', 11),
('JavaScript 이벤트 처리', 11),
-- Node.js
('Express 서버 설정', 12),
('Node.js 비동기 처리', 12),
-- Express.js
('Express 라우팅 설정', 13),
('Middleware 작성', 13),
-- FastAPI
('FastAPI 프로젝트 초기화', 14),
('Pydantic 모델 사용', 14),
-- Spring Boot
('Spring Boot 의존성 설정', 15),
('RESTful API 컨트롤러 생성', 15),
-- API 설계 및 문서화 (Swagger 등)
('Swagger UI 설정', 16),
('OpenAPI 3.0 문서 작성', 16),
-- JWT 및 OAuth 인증
('JWT 생성 및 검증', 17),
('OAuth2.0 인증 흐름', 17),
-- 세션 및 쿠키 관리
('Express 세션 설정', 18),
('HTTP 쿠키 설정 및 보안', 18),
-- Docker
('Dockerfile 작성', 19),
('Docker Compose 설정', 19),
-- CI/CD 기본 개념 (Jenkins, GitLab CI)
('Jenkins Pipeline 작성', 20),
('GitLab Runner 설정', 20),
-- Kubernetes 기본
('Kubernetes Pod 생성', 21),
('Service 및 Ingress 설정', 21),
-- Redis 또는 Memcached
('Redis 데이터 구조: Hash, Set, List', 22),
('Memcached 캐시 설정', 22),
-- RabbitMQ 또는 Kafka
('RabbitMQ 큐 생성 및 메시징', 23),
('Kafka Topic 설정', 23),
-- AWS 기본 (S3, EC2, RDS)
('AWS S3 버킷 생성', 24),
('EC2 인스턴스 설정', 24),
-- 모니터링 및 로깅 (ELK Stack, Prometheus)
('ELK Stack 설정', 25),
('Prometheus 메트릭 수집', 25),
-- 보안 및 권한 관리
('사용자 인증 및 권한 설정', 26),
('데이터 암호화', 26),
-- HTTP 상태 코드
('클라이언트 및 서버 오류 코드 설명', 27),
('상태 코드 기반 오류 처리', 27),
-- 고급 설계 패턴
('Singleton 패턴 구현', 28),
('Factory 패턴 설계', 28),
-- Microservices 아키텍처
('서비스 간 데이터 전송', 29),
('API Gateway 구성', 29),
-- 클라우드 아키텍처 설계
('클라우드 네트워크 설계', 30),
('클라우드 리소스 자동화', 30);

INSERT INTO tech_subclass (name, tech_id) VALUES
-- HTML 기본
('HTML5 구조 태그: header, footer, article', 31),
('HTML 폼 요소: input, select, button', 31),
-- CSS 기본
('CSS 선택자: class, id, 속성 선택자', 32),
('박스 모델: margin, padding, border', 32),
-- JavaScript 기초
('JavaScript 변수 선언: var, let, const', 33),
('JavaScript 함수 선언 및 호출', 33),
-- DOM 조작
('DOM 요소 선택: getElementById, querySelector', 34),
('DOM 이벤트 처리: addEventListener', 34),
-- Git / GitHub
('Git 커밋 메시지 작성 규칙', 35),
('GitHub 브랜치 및 풀 리퀘스트 관리', 35),
-- Responsive Design
('미디어 쿼리: @media', 36),
('반응형 이미지 및 텍스트 크기 조정', 36),
-- CSS Flexbox
('Flexbox 정렬: justify-content, align-items', 37),
('Flexbox 방향 설정: flex-direction', 37),
-- CSS Grid
('Grid Layout 설정: grid-template-rows, columns', 38),
('Grid 아이템 배치: grid-area', 38),
-- Bootstrap 또는 Tailwind CSS
('Bootstrap 컴포넌트: Navbar, Modal', 39),
('Tailwind CSS 유틸리티 클래스: flex, grid, p-x', 39),
-- Webpack 또는 Vite
('Webpack 플러그인 설정', 40),
('Vite Dev Server 설정', 40),
-- Babel
('Babel 프리셋 설정', 41),
('Babel 트랜스파일링: ES6 to ES5', 41),
-- ES6+ 문법
('화살표 함수 사용', 42),
('템플릿 리터럴: `${}`', 42),
-- AJAX / Fetch API
('AJAX 요청: XMLHttpRequest', 43),
('Fetch API로 데이터 가져오기', 43),
-- JSON 데이터 처리
('JSON.parse()와 JSON.stringify() 사용', 44),
('JSON 객체 접근 및 변환', 44),
-- API 통신
('GET, POST 요청 처리', 45),
('API 응답 상태 코드 확인', 45),
-- JavaScript 비동기 처리 (Promises, Async/Await)
('Promise 사용: then, catch', 46),
('Async/Await로 비동기 함수 작성', 46),
-- React 기본
('React 컴포넌트 생성 및 사용', 47),
('React Props 전달 및 사용', 47),
-- React Router
('React Router로 라우팅 설정', 48),
('동적 라우트 처리: useParams', 48),
-- Redux 또는 Context API
('Redux 상태 관리 기본 설정', 49),
('Context API로 전역 상태 관리', 49),
-- Vue.js 기초
('Vue.js 컴포넌트 생성 및 사용', 50),
('Vue Data와 Methods 정의', 50),
-- Vue Router
('Vue Router 기본 설정', 51),
('Vue Router로 네비게이션 구현', 51),
-- Component 기반 설계
('재사용 가능한 컴포넌트 설계', 52),
('컴포넌트 상태와 Props 관리', 52),
-- TypeScript 기본
('TypeScript 타입 선언: string, number', 53),
('TypeScript 인터페이스 정의', 53),
-- Testing (Jest, React Testing Library)
('Jest로 유닛 테스트 작성', 54),
('React Testing Library로 DOM 테스트', 54),
-- Styled Components 또는 Emotion
('Styled Components로 스타일링', 55),
('Emotion을 사용한 동적 스타일 적용', 55),
-- CSS in JS 기법
('CSS-in-JS로 동적 스타일링 구현', 56),
('컴포넌트 기반 CSS 작성', 56),
-- 웹 접근성 (Accessibility)
('ARIA 속성 추가', 57),
('키보드 내비게이션 지원', 57),
-- SEO 기본
('메타 태그 설정: title, description', 58),
('Open Graph 메타데이터 추가', 58),
-- 웹 성능 최적화
('이미지 최적화: Lazy Loading', 59),
('CSS 및 JavaScript Minification', 59),
-- PWAs (Progressive Web Apps)
('Service Worker 등록', 60),
('PWA 매니페스트 작성', 60);


-- 자격증 테이블 생성
CREATE TABLE certificate (
    id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
    tech_id INT NOT NULL,
    FOREIGN KEY (tech_id) REFERENCES tech(id)
);

-- 기술별 관련 자격증 삽입
INSERT INTO certificate (name, tech_id) VALUES
('정보처리기사', 1),
('리눅스 마스터 2급', 2),
('정보기기운용기능사', 2),
('정보처리기능사', 3),
('정보보안기사', 4),
('정보처리산업기사', 5),
('SQLD', 7),
('SQLP', 7),
('데이터베이스 관리사', 8),
('정보처리기사', 8),
('데이터아키텍처전문가', 9),
('정보관리기술사', 10),
('정보처리기능사', 11),
('정보처리기사', 12),
('정보보안기사', 13),
('정보처리기사', 15),
('정보처리산업기사', 15),
('리눅스 마스터 1급', 19),
('정보처리기사', 20),
('정보처리기사', 21),
('정보처리기사', 22),
('정보보안기사', 23),
('AWS Certified Solutions Architect', 24),
('AWS Certified Developer', 24),
('정보보안기사', 25),
('네트워크관리사', 25),
('정보보안기사', 26),
('정보처리기사', 27),
('소프트웨어설계사', 28),
('정보관리기술사', 29),
('AWS Certified Solutions Architect', 30),
('웹디자인기능사', 31),
('컴퓨터그래픽스운용기능사', 31),
('웹디자인기능사', 32),
('정보처리기사', 33),
('정보처리산업기사', 33),
('웹디자인기능사', 36),
('웹디자인기능사', 38),
('정보처리기사', 39),
('웹디자인기능사', 39),
('정보처리기사', 40),
('정보처리기사', 41),
('정보처리기사', 43),
('정보보안기사', 45),
('정보처리산업기사', 47),
('정보처리기사', 47),
('정보처리기사', 50),
('웹디자인기능사', 50),
('정보처리기사', 53),
('정보처리기사', 54),
('정보처리기사', 55),
('웹접근성 관리사', 57),
('정보처리기사', 58),
('정보처리기사', 60),
('정보보안기사', 60);

-- 창업 자격증 테이블
CREATE TABLE startup_certificate (
    id INT PRIMARY KEY AUTO_INCREMENT,
    certificate_id INT NOT NULL,
    FOREIGN KEY (certificate_id) REFERENCES certificate(id)
);

-- 창업 자격증 삽입
INSERT INTO startup_certificate (certificate_id) VALUES
(1),  -- 정보처리기사
(2),  -- 리눅스 마스터 2급
(7),  -- SQLD
(10), -- 데이터베이스 관리사
(12), -- 데이터아키텍처전문가
(17), -- 정보처리기사 (15번 기술)
(21), -- AWS Certified Solutions Architect
(22); -- AWS Certified Developer

-- 기획 자격증 테이블
CREATE TABLE planning_certificate (
    id INT PRIMARY KEY AUTO_INCREMENT,
    certificate_id INT NOT NULL,
    FOREIGN KEY (certificate_id) REFERENCES certificate(id)
);

-- 기획 자격증 삽입
INSERT INTO planning_certificate (certificate_id) VALUES
(1),  -- 정보처리기사: 전반적인 시스템 이해
(7),  -- SQLD: 데이터 분석과 설계
(10), -- 데이터베이스 관리사: 데이터 관리 능력
(12), -- 데이터아키텍처전문가: 데이터 구조 설계
(28), -- 소프트웨어설계사: 소프트웨어 설계 역량
(29); -- 정보관리기술사: 전반적인 IT 프로젝트 관리


-- 로드맵 테이블 job_id 참조 추가
CREATE TABLE roadmap (
    id INT PRIMARY KEY AUTO_INCREMENT,
    job_id INT NOT NULL, -- 직종 ID 참조
    FOREIGN KEY (job_id) REFERENCES job(id)
);

INSERT INTO roadmap (job_id) VALUES
(1), (2);

-- 순서 테이블 수정: 각 기술에 대해 로드맵의 순서를 설정
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
	order_number INT NOT NULL, -- 로드맵 순서
    roadmap_id INT NOT NULL, -- 로드맵 ID 참조
    tech_id INT NOT NULL, -- 기술 ID 참조
    FOREIGN KEY (roadmap_id) REFERENCES roadmap(id),
    FOREIGN KEY (tech_id) REFERENCES tech(id)
);

-- 백엔드 로드맵 기술 순서
INSERT INTO orders (order_number, roadmap_id, tech_id) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5), -- 로드맵 ID 1 (백엔드) 기술 순서
(6, 1, 6), (7, 1, 7), (8, 1, 8), (9, 1, 9), (10, 1, 10),
(11, 1, 11), (12, 1, 12), (13, 1, 13), (14, 1, 14), (15, 1, 15),
(16, 1, 16), (17, 1, 17), (18, 1, 18), (19, 1, 19), (20, 1, 20),
(21, 1, 21), (22, 1, 22), (23, 1, 23), (24, 1, 24), (25, 1, 25),
(26, 1, 26), (27, 1, 27), (28, 1, 28), (29, 1, 29), (30, 1, 30);

-- 프론트엔드 로드맵 기술 순서
INSERT INTO orders (order_number, roadmap_id, tech_id) VALUES
(1, 2, 31), (2, 2, 32), (3, 2, 33), (4, 2, 34), (5, 2, 35), -- 로드맵 ID 2 (프론트엔드) 기술 순서
(6, 2, 36), (7, 2, 37), (8, 2, 38), (9, 2, 39), (10, 2, 40),
(11, 2, 41), (12, 2, 42), (13, 2, 43), (14, 2, 44), (15, 2, 45),
(16, 2, 46), (17, 2, 47), (18, 2, 48), (19, 2, 49), (20, 2, 50),
(21, 2, 51), (22, 2, 52), (23, 2, 53), (24, 2, 54), (25, 2, 55),
(26, 2, 56), (27, 2, 57), (28, 2, 58), (29, 2, 59), (30, 2, 60);

-- 기업 테이블 생성
CREATE TABLE company (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL
);

-- 기업 데이터 삽입
INSERT INTO company (name, description) VALUES
('네이버(Naver)', '다양한 웹 서비스와 포털 사이트를 운영하며, 프론트엔드 개발에 주력하고 있습니다.'),
('카카오(Kakao)', '메신저, 금융, 쇼핑 등 다양한 서비스의 백엔드 시스템을 구축하고 있습니다.'),
('쿠팡(Coupang)', '이커머스 플랫폼에서 프론트엔드와 백엔드를 모두 다루는 풀스택 개발을 진행합니다.'),
('라인(LINE)', '글로벌 메신저 앱을 개발하며, 모바일 애플리케이션 개발에 집중하고 있습니다.'),
('토스(Toss)', '금융 플랫폼에서 대규모 데이터 처리를 담당하는 데이터 엔지니어링을 수행합니다.'),
('넥슨(Nexon)', '다양한 온라인 게임을 개발하며, 게임 개발 분야에서 두각을 나타내고 있습니다.'),
('삼성전자(Samsung Electronics)', 'AI 연구소를 통해 인공지능 기술 개발에 주력하고 있습니다.'),
('LG CNS', '머신러닝을 활용한 다양한 솔루션을 개발하고 있습니다.'),
('SK C&C', '클라우드 기반의 DevOps 서비스를 제공하며, 관련 엔지니어링을 수행합니다.'),
('한화시스템', 'IoT 솔루션을 개발하여 스마트 시티 등 다양한 분야에 적용하고 있습니다.'),
('KT', '클라우드 서비스를 제공하며, 클라우드 인프라 구축과 운영을 담당합니다.'),
('두나무(Dunamu)', '암호화폐 거래소 업비트를 운영하며, 블록체인 기술 개발에 집중하고 있습니다.'),
('현대로보틱스', '산업용 로봇의 소프트웨어를 개발하고 있습니다.'),
('위메프(Wemakeprice)', '이커머스 플랫폼의 웹 개발을 주도하고 있습니다.'),
('NHN', '다양한 서비스의 API를 개발하여 외부에 제공합니다.'),
('티맥스소프트(TmaxSoft)', '시스템 소프트웨어와 미들웨어를 개발하고 있습니다.'),
('안랩(AhnLab)', '보안 소프트웨어를 개발하여 사이버 보안을 강화하고 있습니다.'),
('넥스트이노베이션', 'AR/VR 콘텐츠와 플랫폼을 개발하고 있습니다.'),
('더존비즈온', '기업용 BI 솔루션을 개발하여 제공하고 있습니다.'),
('삼성SDS', '소프트웨어 품질 보증과 테스트 자동화 솔루션을 개발하고 있습니다.');

-- 창업 지원 제도 테이블
CREATE TABLE startup_support(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    supporter VARCHAR(50) NOT NULL
    );

INSERT INTO startup_support (title, content, supporter) VALUES
-- 백엔드 관련 창업 지원
('AI 기반 서비스 창업 지원', 
 'AI와 백엔드 기술을 활용한 서비스 개발을 지원하며, 데이터 분석 및 서버 아키텍처 설계를 돕는 멘토링 프로그램을 제공합니다.', 
 '중소벤처기업부'),
('클라우드 인프라 지원 프로그램', 
 'AWS, Azure 등의 클라우드 인프라를 최대 1년간 무료로 사용할 수 있도록 지원하며, 초기 창업 기업의 서버 운영 비용을 절감합니다.', 
 'AWS Activate'),
('백엔드 개발 역량 강화 캠프', 
 '백엔드 시스템 설계, 데이터베이스 최적화, API 개발 등을 포함한 심화 교육 프로그램을 제공합니다.', 
 'K-Startup'),
('데이터 기반 서비스 창업 지원', 
 '데이터 처리 및 관리 기술을 활용한 창업 아이디어를 대상으로 초기 자금을 지원하고, 전문 멘토링을 제공합니다.', 
 '데이터산업진흥원'),
('IoT 플랫폼 개발 지원', 
 '사물인터넷(IoT) 백엔드 플랫폼 개발을 위한 기술 컨설팅과 하드웨어 개발 자금을 제공합니다.', 
 'IoT Open Innovation'),

-- 프론트엔드 관련 창업 지원
('UX/UI 디자인 창업 지원', 
 '사용자 친화적인 인터페이스 개발을 위한 UX/UI 설계 멘토링과 디자인 도구 사용 지원금을 제공합니다.', 
 '창업진흥원'),
('웹 애플리케이션 창업 지원', 
 '프론트엔드 기술을 활용한 웹 애플리케이션 개발에 필요한 자금 지원과 온라인 홍보를 제공합니다.', 
 '정보통신산업진흥원'),
('모바일 앱 개발 지원 프로그램', 
 '프론트엔드 기술과 모바일 애플리케이션 개발 기술을 활용한 창업 아이디어를 대상으로 초기 자금과 기술 컨설팅을 지원합니다.', 
 'Google for Startups'),
('PWA 기술 창업 지원', 
 '진보적 웹 애플리케이션(PWA) 기술을 활용하여 다양한 플랫폼에서 동작하는 앱을 개발하는 창업자를 위한 멘토링과 기술 자금을 지원합니다.', 
 '중소벤처기업부'),
('디자인 특화 창업 지원', 
 'HTML, CSS, JavaScript와 같은 프론트엔드 기술을 활용한 창업 아이디어를 대상으로 디자인 교육 및 실습 기회를 제공합니다.', 
 '서울창업허브'),

-- 공통 창업 지원
('기술 창업 지원 바우처', 
 '초기 창업자를 대상으로 소프트웨어 개발, 서버 운영, 클라우드 비용 등을 지원하는 바우처를 제공합니다.', 
 '중소벤처기업부'),
('창업 멘토링 프로그램', 
 'IT 창업자들을 위한 맞춤형 멘토링 프로그램으로, 기술 전략, 비즈니스 모델 개발, 투자 유치 전략 등을 지원합니다.', 
 '스타트업얼라이언스'),
('글로벌 스타트업 지원', 
 '해외 시장 진출을 목표로 하는 스타트업을 대상으로, 기술 컨설팅과 해외 네트워킹 기회를 제공합니다.', 
 'KOTRA'),
('창업 경진대회', 
 'IT 기술 기반 창업 아이디어를 대상으로 한 경진대회로, 우승자에게 초기 자금을 지원합니다.', 
 '창업진흥원'),
('공공 데이터 활용 창업 지원', 
 '공공 데이터를 활용한 창업 아이디어를 가진 팀에게 데이터 분석 컨설팅과 초기 자금을 지원합니다.', 
 '데이터산업진흥원');

-- ========================================
-- 과목_기술 연결 테이블 생성
CREATE TABLE tech_subject (
	id INT PRIMARY KEY AUTO_INCREMENT,
    subject_id INT,
    tech_id INT,
    FOREIGN KEY (subject_id) REFERENCES subject(id),
    FOREIGN KEY (tech_id) REFERENCES tech(id)
);

-- 과목_기술 맵핑 데이터 삽입
INSERT INTO tech_subject (subject_id, tech_id) VALUES
-- 백엔드 개발에 필요한 과목과 기술 매핑
(17, 7),  -- 데이터베이스 과목과 SQL 기본 문법
(17, 8),  -- 데이터베이스 과목과 MySQL 또는 PostgreSQL
(18, 9),  -- 데이터베이스설계 과목과 데이터베이스 설계
(18, 7),  -- 데이터베이스설계 과목과 SQL 기본 문법
(18, 10), -- 데이터베이스설계 과목과 ORM
(14, 4),  -- 컴퓨터네트워크 과목과 HTTP/HTTPS
(14, 22), -- 컴퓨터네트워크 과목과 Redis 또는 Memcached
(14, 23), -- 컴퓨터네트워크 과목과 RabbitMQ 또는 Kafka
(15, 28), -- 알고리즘응용 과목과 고급 설계 패턴
(15, 29), -- 알고리즘응용 과목과 Microservices 아키텍처
(16, 2),  -- 운영체제 및 실습 과목과 Linux 기본 명령어
(16, 3),  -- 운영체제 및 실습 과목과 CLI
(20, 11), -- 시스템프로그래밍 과목과 JavaScript 기초
(20, 12), -- 시스템프로그래밍 과목과 Node.js
(44, 25), -- 소프트웨어공학 과목과 모니터링 및 로깅
(44, 26), -- 소프트웨어공학 과목과 보안 및 권한 관리
(44, 28), -- 소프트웨어공학 과목과 고급 설계 패턴
(45, 31), -- 컴퓨터그래픽스 과목과 HTML 기본
(45, 32), -- 컴퓨터그래픽스 과목과 CSS 기본
(52, 31), -- 웹프로그래밍 과목과 HTML 기본
(52, 32), -- 웹프로그래밍 과목과 CSS 기본
(52, 33), -- 웹프로그래밍 과목과 JavaScript 기초
(52, 45), -- 웹프로그래밍 과목과 API 통신
(49, 33), -- 프로그래밍언어개론 과목과 JavaScript 기초
(49, 53), -- 프로그래밍언어개론 과목과 TypeScript 기본
(19, 7),  -- 데이터과학 과목과 SQL 기본 문법
(35, 11), -- 딥러닝 과목과 JavaScript 기초
(35, 47), -- 딥러닝 과목과 React 기본
(43, 48), -- 기계학습 과목과 React Router
(43, 55); -- 기계학습 과목과 Styled Components

-- 과목과 기술 연결 삽입
INSERT INTO tech_subject (subject_id, tech_id) VALUES
-- 데이터베이스 관련 기술과 과목
(17, 7), -- 데이터베이스 과목과 SQL
(17, 8), -- 데이터베이스 과목과 MySQL/PostgreSQL
(18, 9), -- 데이터베이스설계 과목과 데이터베이스 설계
(18, 7), -- 데이터베이스설계 과목과 SQL
(18, 10), -- 데이터베이스설계 과목과 ORM

-- 컴퓨터네트워크 관련 기술과 과목
(14, 4), -- 컴퓨터네트워크 과목과 HTTP/HTTPS
(14, 22), -- 컴퓨터네트워크 과목과 Redis/Memcached
(14, 23), -- 컴퓨터네트워크 과목과 RabbitMQ/Kafka

-- 알고리즘 관련 기술과 과목
(15, 28), -- 알고리즘응용 과목과 고급 설계 패턴
(15, 29), -- 알고리즘응용 과목과 Microservices

-- 운영체제 관련 기술과 과목
(16, 2), -- 운영체제 및 실습 과목과 Linux
(16, 3), -- 운영체제 및 실습 과목과 CLI

-- 시스템프로그래밍 관련 기술과 과목
(20, 11), -- 시스템프로그래밍 과목과 JavaScript
(20, 12), -- 시스템프로그래밍 과목과 Node.js

-- 소프트웨어공학 관련 기술과 과목
(44, 25), -- 소프트웨어공학 과목과 모니터링 및 로깅
(44, 26), -- 소프트웨어공학 과목과 보안 및 권한 관리
(44, 28), -- 소프트웨어공학 과목과 고급 설계 패턴

-- 컴퓨터그래픽스 관련 기술과 과목
(45, 31), -- 컴퓨터그래픽스 과목과 HTML
(45, 32), -- 컴퓨터그래픽스 과목과 CSS

-- 웹프로그래밍 관련 기술과 과목
(52, 31), -- 웹프로그래밍 과목과 HTML
(52, 32), -- 웹프로그래밍 과목과 CSS
(52, 33), -- 웹프로그래밍 과목과 JavaScript
(52, 45), -- 웹프로그래밍 과목과 API 통신

-- 프로그래밍언어개론 관련 기술과 과목
(49, 33), -- 프로그래밍언어개론 과목과 JavaScript
(49, 53), -- 프로그래밍언어개론 과목과 TypeScript

-- 인공지능과 데이터 관련 과목과 기술
(19, 7), -- 데이터과학 과목과 SQL
(35, 11), -- 딥러닝 과목과 JavaScript
(35, 47), -- 딥러닝 과목과 React
(43, 48), -- 기계학습 과목과 React Router
(43, 55); -- 기계학습 과목과 Styled Components

-- 직종 연구 연결 테이블(<- 연구ID, 직종ID)
CREATE TABLE job_research(
	id INT PRIMARY KEY AUTO_INCREMENT,
    research_id INT NOT NUll,
    job_id INT NOT NULL,
	FOREIGN KEY (research_id) REFERENCES research(id),
    FOREIGN KEY (job_id) REFERENCES job(id)
    );

INSERT INTO job_research (research_id, job_id) VALUES
(1, 1), (2, 1), (3, 2), (4, 2);

-- 과목_직종 연결 테이블 생성
CREATE TABLE job_subject (
    id INT PRIMARY KEY AUTO_INCREMENT,
    subject_id INT NOT NULL,
    job_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subject(id),
    FOREIGN KEY (job_id) REFERENCES job(id)
);

-- 과목_직종 맵핑 데이터 삽입
INSERT INTO job_subject (subject_id, job_id) VALUES
-- 백엔드 개발자 관련 과목
(17, 1), -- 데이터베이스
(18, 1), -- 데이터베이스설계
(15, 1), -- 알고리즘응용
(16, 1), -- 운영체제 및 실습
(20, 1), -- 시스템프로그래밍
(44, 1), -- 소프트웨어공학
(52, 1), -- 웹프로그래밍

-- 프론트엔드 개발자 관련 과목
(52, 2), -- 웹프로그래밍
(45, 2), -- 컴퓨터그래픽스
(49, 2), -- 프로그래밍언어개론
(31, 2), -- 인간-컴퓨터 상호작용
(23, 2), -- 컴퓨터프로그래밍3

-- 풀스택 개발자 관련 과목
(17, 3), -- 데이터베이스
(18, 3), -- 데이터베이스설계
(52, 3), -- 웹프로그래밍
(45, 3), -- 컴퓨터그래픽스
(16, 3), -- 운영체제 및 실습

-- 모바일 개발자 관련 과목
(23, 4), -- 컴퓨터프로그래밍3
(35, 4), -- 딥러닝
(20, 4), -- 시스템프로그래밍
(31, 4), -- 인간-컴퓨터 상호작용

-- 데이터 엔지니어 관련 과목
(17, 5), -- 데이터베이스
(18, 5), -- 데이터베이스설계
(19, 5), -- 데이터과학
(44, 5), -- 소프트웨어공학

-- 게임 개발자 관련 과목
(45, 6), -- 컴퓨터그래픽스
(49, 6), -- 프로그래밍언어개론
(35, 6), -- 딥러닝
(52, 6), -- 웹프로그래밍

-- 인공지능(AI) 개발자 관련 과목
(19, 7), -- 데이터과학
(35, 7), -- 딥러닝
(43, 7), -- 기계학습
(45, 7), -- 컴퓨터그래픽스

-- 머신러닝 엔지니어 관련 과목
(19, 8), -- 데이터과학
(35, 8), -- 딥러닝
(43, 8), -- 기계학습
(18, 8), -- 데이터베이스설계

-- 데브옵스(DevOps) 엔지니어 관련 과목
(16, 9), -- 운영체제 및 실습
(14, 9), -- 컴퓨터네트워크
(44, 9), -- 소프트웨어공학

-- 사물인터넷(IoT) 개발자 관련 과목
(27, 10), -- 디지털 VLSI
(14, 10), -- 컴퓨터네트워크
(35, 10), -- 딥러닝

-- 클라우드 엔지니어 관련 과목
(17, 11), -- 데이터베이스
(14, 11), -- 컴퓨터네트워크
(44, 11), -- 소프트웨어공학

-- 블록체인 개발자 관련 과목
(18, 12), -- 데이터베이스설계
(19, 12), -- 데이터과학
(14, 12), -- 컴퓨터네트워크

-- 로보틱스 소프트웨어 개발자 관련 과목
(21, 13), -- 논리회로
(35, 13), -- 딥러닝
(43, 13), -- 기계학습

-- 웹 개발자 관련 과목
(52, 14), -- 웹프로그래밍
(45, 14), -- 컴퓨터그래픽스
(44, 14), -- 소프트웨어공학

-- API 개발자 관련 과목
(52, 15), -- 웹프로그래밍
(17, 15), -- 데이터베이스
(14, 15), -- 컴퓨터네트워크

-- 시스템 소프트웨어 개발자 관련 과목
(16, 16), -- 운영체제 및 실습
(20, 16), -- 시스템프로그래밍
(44, 16), -- 소프트웨어공학

-- 보안 소프트웨어 개발자 관련 과목
(29, 17), -- 정보보호
(14, 17), -- 컴퓨터네트워크
(44, 17), -- 소프트웨어공학

-- 증강현실(AR)/가상현실(VR) 개발자 관련 과목
(45, 18), -- 컴퓨터그래픽스
(19, 18), -- 데이터과학
(35, 18), -- 딥러닝

-- BI(Business Intelligence) 개발자 관련 과목
(19, 19), -- 데이터과학
(17, 19), -- 데이터베이스
(44, 19), -- 소프트웨어공학

-- QA(품질 보증) 자동화 개발자 관련 과목
(44, 20), -- 소프트웨어공학
(52, 20), -- 웹프로그래밍
(16, 20); -- 운영체제 및 실습

-- 직종-대학원 연결 테이블 생성
CREATE TABLE job_grad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    job_id INT NOT NULL,
    grad_id INT NOT NULL,
    FOREIGN KEY (job_id) REFERENCES job(id),
    FOREIGN KEY (grad_id) REFERENCES grad(id)
);

-- 맵핑 데이터 추가
INSERT INTO job_grad (job_id, grad_id) VALUES 
(1, 1), (1, 2), (1, 3), (2, 4), (2, 5), (2, 6);
    
-- 직종_기업 연결 테이블 생성
CREATE TABLE job_company (
    id INT PRIMARY KEY AUTO_INCREMENT,
	company_id INT NOT NULL,
    job_id INT NOT NULL,
	FOREIGN KEY (company_id) REFERENCES company(id),
    FOREIGN KEY (job_id) REFERENCES job(id)
);

INSERT INTO job_company (company_id, job_id) VALUES
(1, 1), (2, 2);

CREATE TABLE startup_tech (
	id INT PRIMARY KEY AUTO_INCREMENT,
    tech_id INT NOT NULL,
    FOREIGN KEY (tech_id) REFERENCES tech(id)
    );

INSERT INTO startup_tech (tech_id) VALUES
(61), (62), (63), (64), (65);


CREATE TABLE planning_tech (
	id INT PRIMARY KEY AUTO_INCREMENT,
    tech_id INT NOT NULL,
    FOREIGN KEY (tech_id) REFERENCES tech(id)
    );

INSERT INTO planning_tech_tech (tech_id) VALUES
(66), (67), (68), (69), (70);