USE [KinoDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21.06.2023 17:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bilety]    Script Date: 21.06.2023 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bilety](
	[IdBilet] [int] IDENTITY(1,1) NOT NULL,
	[Ulga] [nvarchar](max) NOT NULL,
	[Cena] [real] NOT NULL,
	[MiejsceIdMiejsce] [int] NOT NULL,
	[ZamowienieIdZamowienie] [int] NOT NULL,
 CONSTRAINT [PK_Bilety] PRIMARY KEY CLUSTERED 
(
	[IdBilet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmy]    Script Date: 21.06.2023 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmy](
	[IdFilm] [int] IDENTITY(1,1) NOT NULL,
	[Tytul] [nvarchar](max) NOT NULL,
	[Gatunek] [nvarchar](max) NOT NULL,
	[CzasTrawania] [nvarchar](max) NOT NULL,
	[DataPremiery] [datetime2](7) NOT NULL,
	[Rezyseria] [nvarchar](max) NOT NULL,
	[Kraj] [nvarchar](max) NOT NULL,
	[Jezyk] [nvarchar](max) NOT NULL,
	[OgrWiekowe] [nvarchar](max) NOT NULL,
	[OpisDlugi] [nvarchar](max) NOT NULL,
	[OpisKrotki] [nvarchar](max) NOT NULL,
	[DostepneWersje] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Filmy] PRIMARY KEY CLUSTERED 
(
	[IdFilm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Miejsca]    Script Date: 21.06.2023 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Miejsca](
	[IdMiejsce] [int] IDENTITY(1,1) NOT NULL,
	[Rzad] [int] NOT NULL,
	[CzyZajete] [bit] NOT NULL,
	[IdZamowienie] [int] NOT NULL,
	[NrMiejsca] [int] NOT NULL,
 CONSTRAINT [PK_Miejsca] PRIMARY KEY CLUSTERED 
(
	[IdMiejsce] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 21.06.2023 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[IdSala] [int] IDENTITY(1,1) NOT NULL,
	[Numer] [int] NOT NULL,
	[IloscRzedow] [int] NOT NULL,
	[IloscMiejsc] [int] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[IdSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seanse]    Script Date: 21.06.2023 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seanse](
	[IdSeans] [int] IDENTITY(1,1) NOT NULL,
	[IdFilm] [int] NOT NULL,
	[IdSala] [int] NOT NULL,
	[Data] [datetime2](7) NOT NULL,
	[WersjaJez] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Seanse] PRIMARY KEY CLUSTERED 
(
	[IdSeans] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zamowienia]    Script Date: 21.06.2023 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zamowienia](
	[IdZamowienie] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](max) NOT NULL,
	[Nazwisko] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Platnosc] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[IdSeans] [int] NOT NULL,
	[Guid] [uniqueidentifier] NOT NULL,
	[Ulga] [nvarchar](max) NULL,
 CONSTRAINT [PK_Zamowienia] PRIMARY KEY CLUSTERED 
(
	[IdZamowienie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322131356_init', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322132540_seed data', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322132849_seed data v2', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329114951_seed data v3', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230403093752_seed data v4', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230403094702_seed data v5', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230412101859_Alter miejsce add zamowienie col', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230412103424_poprawki do tabel', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230412103922_poprawki do tabel v2', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230417173941_v6', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230417180635_v6', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230419142457_kk', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230506155515_migracja', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230506160105_migracja2', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230506160737_migracja', N'7.0.4')
GO
SET IDENTITY_INSERT [dbo].[Filmy] ON 

INSERT [dbo].[Filmy] ([IdFilm], [Tytul], [Gatunek], [CzasTrawania], [DataPremiery], [Rezyseria], [Kraj], [Jezyk], [OgrWiekowe], [OpisDlugi], [OpisKrotki], [DostepneWersje]) VALUES (1, N'Za linią wroga', N'Wojenny', N'02:00:00', CAST(N'2001-10-15T00:00:00.0000000' AS DateTime2), N'John Moore', N'USA', N'Ang', N'+16', N'Akcja filmu "Za linią wroga" rozgrywa się w czasie II wojny światowej. Naziści zajęli tereny Polski i szybko posuwają się dalej. Niebawem w ręce okupantów trafia wybitny naukowiec Fabian (Paweł Deląg, "Lista Schindlera", "Kiler"). Mężczyzna jest prawdziwym geniuszem, mającym w głowie plany sekretnych innowacji. Z tego powodu odbicie go z rąk wrogów i przetransportowanie do Wielkiej Brytanii ma priorytetowe znaczenie. Wszyscy doskonale rozumieją, że jeżeli posiadana przez jeńca wiedza zostanie wykorzystana przez nazistów, wynik wojny będzie przesądzony. Do przeprowadzenia specjalnej operacji ratunkowej zostaje przydzielony amerykański oficer. Łącząc siły z elitarną drużyną sojuszniczych sił, trafia w samo centrum okupowanego terytorium. Czy uda im się odnaleźć naukowca i wyrwać go z rąk wrogów?', N'Amerykański film wojenny z 2001 roku w reżyserii Johna Moore’a, z Gene’em Hackmanem i Owenem Wilsonem w rolach głównych. ', N'PL')
INSERT [dbo].[Filmy] ([IdFilm], [Tytul], [Gatunek], [CzasTrawania], [DataPremiery], [Rezyseria], [Kraj], [Jezyk], [OgrWiekowe], [OpisDlugi], [OpisKrotki], [DostepneWersje]) VALUES (2, N'Shrek', N'Animowany', N'01:57:00', CAST(N'2001-08-15T00:00:00.0000000' AS DateTime2), N'Vicky Jenson, Andrew Adamson', N'USA', N'Ang', N'+8', N'W bagnie żył olbrzym Shrek, którego cenna samotność została nagle zakłócona inwazją dokuczliwych postaci z bajek. Ślepe myszki buszują w zapasach olbrzyma, zły wilk sypia w jego łóżku, a trzy świnki buszują  po jego samotni. Wszystkie te postaci zostały wypędzone ze swego królestwa przez złego Lorda Farquaada.  Zdecydowany ocalić ich dom – nie mówiąc już o swoim – Shrek porozumiewa się z Farquaadem i wyrusza na ratunek pięknej księżniczce Fionie, która ma zostać żoną Lorda. W misji towarzyszy mu przemądrzały Osioł, który zrobi dla Shreka wszystko z wyjątkiem... przestania mielenia ozorem. Ocalenie księżniczki przed ziejącym ogniem smokiem okazuje się być najmniejszym problemem przyjaciół, kiedy to zostaje odkryty głęboko skrywany, mroczny sekret Fiony.  ', N'Amerykański film animowany z 2001 w reżyserii Andrew Adamsona i Vicky Jenson, będący adaptacją ilustrowanej książki Shrek! autorstwa Williama Steiga. ', N'PL')
INSERT [dbo].[Filmy] ([IdFilm], [Tytul], [Gatunek], [CzasTrawania], [DataPremiery], [Rezyseria], [Kraj], [Jezyk], [OgrWiekowe], [OpisDlugi], [OpisKrotki], [DostepneWersje]) VALUES (3, N'John Wick 4', N'Kryminał', N'02:39:00', CAST(N'2023-03-24T00:00:00.0000000' AS DateTime2), N'Chad Stahelski', N'USA', N'Ang', N'+16', N'Ceny idą w górę, więc także stawka za głowę legendarnego zabójcy, Johna Wicka przebiła już sufit. Stając do ostatecznego pojedynku, który może dać mu upragnioną wolność i zasłużoną emeryturę, John wie, że może liczyć tylko na siebie. Dla niego, to nic nowego. To co zmieniło się tym razem, to fakt, że przeciwko sobie ma całą międzynarodową organizację najlepszych płatnych zabójców, a jej nowy szef Markiz de Gramond jest równie wyrafinowany, co bezlitosny. Zanim John stanie z nim oko w oko, będzie musiał odwiedzić kilka kontynentów mierząc się z całą plejadą twardzieli, którzy wiedzą wszystko o zabijaniu. Tuż przed wielkim finałem tej morderczej symfonii, John Wick trafi na trop swojej dalekiej rodziny, której członkowie mogą mieć decydujący wpływ na wynik całej rozgrywki. ', N'Amerykański thriller neo-noir z 2023 roku, wyreżyserowany przez Chada Stahelskiego i napisany przez Shay''a Hattena i Michaela Fincha. Kontynuacja Johna Wicka 3 z 2019 roku, a także czwarta część serii filmów John Wick. W roli tytułowej wystąpił Keanu Reeves. ', N'PL')
INSERT [dbo].[Filmy] ([IdFilm], [Tytul], [Gatunek], [CzasTrawania], [DataPremiery], [Rezyseria], [Kraj], [Jezyk], [OgrWiekowe], [OpisDlugi], [OpisKrotki], [DostepneWersje]) VALUES (4, N'Wyrwa', N'Thriller', N'01:39:00', CAST(N'2023-03-17T00:00:00.0000000' AS DateTime2), N'Bartosz Konopka', N'USA', N'PL', N'+15', N'Tajemniczy wypadek samochodowy zmienia całkowicie życie Maćka (Tomasz Kot). W zdarzeniu ginie jego żona Janina (Karolina Gruszka). Najprawdopodobniej kobieta popełniła samobójstwo. Maciej nie ma jednak pojęcia, dlaczego do wypadku doszło pod Mrągowem, skoro Janina powiedziała, że jedzie na delegację do Krakowa. Pomyliła się? A może kłamała? Zrozpaczony mężczyzna wyrusza w podróż, aby rozwiązać zagadkę jej śmierci. Wkrótce trafia na trop niejakiego Wojnara (Grzegorz Damięcki) – aktora, którego podejrzewa o romans ze zmarłą żoną. Od tego momentu pytania zaczynają się mnożyć, a tragedia zmienia się w skomplikowaną zagadkę. Maciej dochodzi do wniosku, że być może w ogóle nie znał kobiety, którą poślubił… ', N'Thriller psychologiczny, poruszający trudną tematykę konsekwencji życiowych błędów, straty oraz małżeńskich sekretów, a także miłości dwóch mężczyzn. ', N'dsfds')
SET IDENTITY_INSERT [dbo].[Filmy] OFF
GO
SET IDENTITY_INSERT [dbo].[Miejsca] ON 

INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (1, 1, 1, 6, 13)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (2, 1, 1, 7, 15)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (3, 1, 1, 8, 14)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (4, 1, 1, 9, 10)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (5, 1, 1, 10, 16)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (6, 3, 1, 11, 18)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (7, 3, 1, 12, 14)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (8, 4, 1, 13, 4)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (9, 3, 1, 14, 3)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (10, 18, 1, 15, 18)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (11, 3, 1, 17, 12)
INSERT [dbo].[Miejsca] ([IdMiejsce], [Rzad], [CzyZajete], [IdZamowienie], [NrMiejsca]) VALUES (12, 3, 1, 16, 12)
SET IDENTITY_INSERT [dbo].[Miejsca] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([IdSala], [Numer], [IloscRzedow], [IloscMiejsc]) VALUES (1, 1, 5, 30)
INSERT [dbo].[Sale] ([IdSala], [Numer], [IloscRzedow], [IloscMiejsc]) VALUES (2, 2, 30, 100)
INSERT [dbo].[Sale] ([IdSala], [Numer], [IloscRzedow], [IloscMiejsc]) VALUES (3, 3, 28, 80)
INSERT [dbo].[Sale] ([IdSala], [Numer], [IloscRzedow], [IloscMiejsc]) VALUES (4, 4, 10, 50)
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO
SET IDENTITY_INSERT [dbo].[Seanse] ON 

INSERT [dbo].[Seanse] ([IdSeans], [IdFilm], [IdSala], [Data], [WersjaJez]) VALUES (1, 1, 2, CAST(N'2023-04-04T10:20:00.0000000' AS DateTime2), N'PL')
INSERT [dbo].[Seanse] ([IdSeans], [IdFilm], [IdSala], [Data], [WersjaJez]) VALUES (2, 2, 1, CAST(N'2023-06-18T15:30:00.0000000' AS DateTime2), N'PL')
INSERT [dbo].[Seanse] ([IdSeans], [IdFilm], [IdSala], [Data], [WersjaJez]) VALUES (3, 3, 3, CAST(N'2023-06-18T20:00:00.0000000' AS DateTime2), N'PL')
INSERT [dbo].[Seanse] ([IdSeans], [IdFilm], [IdSala], [Data], [WersjaJez]) VALUES (4, 4, 4, CAST(N'2023-04-05T22:30:00.0000000' AS DateTime2), N'PL')
INSERT [dbo].[Seanse] ([IdSeans], [IdFilm], [IdSala], [Data], [WersjaJez]) VALUES (24, 3, 3, CAST(N'2023-06-20T22:30:00.0000000' AS DateTime2), N'PL')
INSERT [dbo].[Seanse] ([IdSeans], [IdFilm], [IdSala], [Data], [WersjaJez]) VALUES (25, 2, 2, CAST(N'2023-07-21T22:40:00.0000000' AS DateTime2), N'PL')
SET IDENTITY_INSERT [dbo].[Seanse] OFF
GO
SET IDENTITY_INSERT [dbo].[Zamowienia] ON 

INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (1, N'Marcin', N'Kowalski', N'marcin.kowalski@o2.pl', N'Online', N'Zrealizowane', 1, N'2212e034-af91-4be8-bdc3-2cdec94919bd', NULL)
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (2, N'Michał', N'Kubicki', N'michal.kubicki@o2.pl', N'Online', N'Zrealizowane', 2, N'72a34e92-865b-4ad5-8e04-eebd45d47be9', NULL)
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (3, N'Dominik', N'Syska', N'dominik.syska@o2.pl', N'Online', N'Zrealizowane', 3, N'f078a654-308c-4f6c-a869-b24de46096b9', NULL)
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (4, N'Magda', N'Sokołowska', N'magda.sokolowska@o2.pl', N'Online', N'Zrealizowane', 4, N'c5434e83-f907-49a1-9542-8374b8345500', NULL)
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (6, N'Klementyna', N'Bajewska', N'dfgsfsfsf@sdgsd.pl', N'online', N'niepotwierdzone', 2, N'406b16ca-3bc7-4cbf-9950-20f0db105dcb', N'normalny')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (7, N'Klementyna', N'Bajewska', N'dfgsfsfsf@sdgsd.pl', N'online', N'niepotwierdzone', 2, N'51df5959-d866-4e79-b7b3-f1997e16c154', N'dziecko do lat 3')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (8, N'sfsdf', N'dsf', N'sss@dd.pl', N'online', N'niepotwierdzone', 2, N'2bd480aa-60e7-4912-b8ee-24a3cbdee441', N'student')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (9, N'Klementyna', N'Bajewska', N'dfgsfsfsf@sdgsd.pl', N'online', N'Potwierdzone, opłacone', 2, N'5aae36da-e0c9-48fd-a6c7-320038e49135', N'student')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (10, N'Klementyna', N'Bajewska', N'dfgsfsfsf@sdgsd.pl', N'online', N'Potwierdzone, opłacone', 2, N'd03d3fbd-4a17-4c58-a691-6227086fe931', N'student')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (11, N'Miłosz', N'Kukulski', N'dfgsfsfsf@sdgsd.pl', N'online', N'Potwierdzone, opłacone', 2, N'c1738666-da8c-4cfa-9337-734b75082e98', N'dziecko do lat 3')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (12, N'Miłosz', N'Kukulski', N'dfgsfsfsf@sdgsd.pl', N'online', N'Niepotwierdzone', 2, N'418b61bc-89e6-4842-b7cf-7998a945802b', N'dziecko do lat 3')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (13, N'Miłosz', N'Kukulski', N'milek.kukulski@o2.pl', N'online', N'Potwierdzone, opłacone', 2, N'1f5f17a5-4d5d-4628-bf5b-50669ceffd7e', N'normalny')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (14, N'Miłosz', N'Kukulski', N'milek.kukulski@o2.pl', N'gotówka', N'Potwierdzone, do opłacenia w kasie', 2, N'753b72ed-18db-4fe0-a10c-cf12e6f60fda', N'uczeń')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (15, N'Miłosz', N'saascasdac', N'sacsaasc@o2.pl', N'online', N'Niepotwierdzone', 24, N'a86c889a-e3d4-4d65-9e6a-73ac76d70787', N'emeryt')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (16, N'Miłosz', N'Kukulski', N'asdads@o2.pl', N'online', N'Potwierdzone, opłacone', 2, N'c8a94adf-72d9-4032-bc10-a8ac479e73a8', N'student')
INSERT [dbo].[Zamowienia] ([IdZamowienie], [Imie], [Nazwisko], [Mail], [Platnosc], [Status], [IdSeans], [Guid], [Ulga]) VALUES (17, N'Miłosz', N'Kukulski', N'asdads@o2.pl', N'online', N'Niepotwierdzone', 2, N'6ab9acfb-52b5-43a5-b296-e804c522862e', N'student')
SET IDENTITY_INSERT [dbo].[Zamowienia] OFF
GO
ALTER TABLE [dbo].[Miejsca] ADD  DEFAULT ((0)) FOR [NrMiejsca]
GO
ALTER TABLE [dbo].[Zamowienia] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [Guid]
GO
ALTER TABLE [dbo].[Bilety]  WITH CHECK ADD  CONSTRAINT [FK_Bilety_Miejsca_MiejsceIdMiejsce] FOREIGN KEY([MiejsceIdMiejsce])
REFERENCES [dbo].[Miejsca] ([IdMiejsce])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bilety] CHECK CONSTRAINT [FK_Bilety_Miejsca_MiejsceIdMiejsce]
GO
ALTER TABLE [dbo].[Bilety]  WITH CHECK ADD  CONSTRAINT [FK_Bilety_Zamowienia_ZamowienieIdZamowienie] FOREIGN KEY([ZamowienieIdZamowienie])
REFERENCES [dbo].[Zamowienia] ([IdZamowienie])
GO
ALTER TABLE [dbo].[Bilety] CHECK CONSTRAINT [FK_Bilety_Zamowienia_ZamowienieIdZamowienie]
GO
ALTER TABLE [dbo].[Miejsca]  WITH CHECK ADD  CONSTRAINT [FK_Miejsca_Zamowienia_IdZamowienie] FOREIGN KEY([IdZamowienie])
REFERENCES [dbo].[Zamowienia] ([IdZamowienie])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Miejsca] CHECK CONSTRAINT [FK_Miejsca_Zamowienia_IdZamowienie]
GO
ALTER TABLE [dbo].[Seanse]  WITH CHECK ADD  CONSTRAINT [FK_Seanse_Filmy_IdFilm] FOREIGN KEY([IdFilm])
REFERENCES [dbo].[Filmy] ([IdFilm])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Seanse] CHECK CONSTRAINT [FK_Seanse_Filmy_IdFilm]
GO
ALTER TABLE [dbo].[Seanse]  WITH CHECK ADD  CONSTRAINT [FK_Seanse_Sale_IdSala] FOREIGN KEY([IdSala])
REFERENCES [dbo].[Sale] ([IdSala])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Seanse] CHECK CONSTRAINT [FK_Seanse_Sale_IdSala]
GO
ALTER TABLE [dbo].[Zamowienia]  WITH CHECK ADD  CONSTRAINT [FK_Zamowienia_Seanse_IdSeans] FOREIGN KEY([IdSeans])
REFERENCES [dbo].[Seanse] ([IdSeans])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Zamowienia] CHECK CONSTRAINT [FK_Zamowienia_Seanse_IdSeans]
GO
