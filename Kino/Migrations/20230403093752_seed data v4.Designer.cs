﻿// <auto-generated />
using System;
using Kino.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace Kino.Migrations
{
    [DbContext(typeof(DataContext))]
    [Migration("20230403093752_seed data v4")]
    partial class seeddatav4
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.4")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Kino.Data.Models.Bilet", b =>
                {
                    b.Property<int>("IdBilet")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IdBilet"));

                    b.Property<float>("Cena")
                        .HasColumnType("real");

                    b.Property<int>("MiejsceIdMiejsce")
                        .HasColumnType("int");

                    b.Property<string>("Ulga")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("ZamowienieIdZamowienie")
                        .HasColumnType("int");

                    b.HasKey("IdBilet");

                    b.HasIndex("MiejsceIdMiejsce");

                    b.HasIndex("ZamowienieIdZamowienie");

                    b.ToTable("Bilety");
                });

            modelBuilder.Entity("Kino.Data.Models.Film", b =>
                {
                    b.Property<int>("IdFilm")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IdFilm"));

                    b.Property<string>("CzasTrawania")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("DataPremiery")
                        .HasColumnType("datetime2");

                    b.Property<string>("DostepneWersje")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Gatunek")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Jezyk")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Kraj")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OgrWiekowe")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OpisDlugi")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OpisKrotki")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Rezyseria")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Tytul")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("IdFilm");

                    b.ToTable("Filmy");

                    b.HasData(
                        new
                        {
                            IdFilm = 1,
                            CzasTrawania = "02:00:00",
                            DataPremiery = new DateTime(2001, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            DostepneWersje = "dsfds",
                            Gatunek = "Wojenny",
                            Jezyk = "Ang",
                            Kraj = "USA",
                            OgrWiekowe = "+16",
                            OpisDlugi = "Akcja filmu \"Za linią wroga\" rozgrywa się w czasie II wojny światowej. Naziści zajęli tereny Polski i szybko posuwają się dalej. Niebawem w ręce okupantów trafia wybitny naukowiec Fabian (Paweł Deląg, \"Lista Schindlera\", \"Kiler\"). Mężczyzna jest prawdziwym geniuszem, mającym w głowie plany sekretnych innowacji. Z tego powodu odbicie go z rąk wrogów i przetransportowanie do Wielkiej Brytanii ma priorytetowe znaczenie. Wszyscy doskonale rozumieją, że jeżeli posiadana przez jeńca wiedza zostanie wykorzystana przez nazistów, wynik wojny będzie przesądzony. Do przeprowadzenia specjalnej operacji ratunkowej zostaje przydzielony amerykański oficer. Łącząc siły z elitarną drużyną sojuszniczych sił, trafia w samo centrum okupowanego terytorium. Czy uda im się odnaleźć naukowca i wyrwać go z rąk wrogów?",
                            OpisKrotki = "Amerykański film wojenny z 2001 roku w reżyserii Johna Moore’a, z Gene’em Hackmanem i Owenem Wilsonem w rolach głównych. ",
                            Rezyseria = "John Moore",
                            Tytul = "Za linią wroga"
                        },
                        new
                        {
                            IdFilm = 2,
                            CzasTrawania = "01:57:00",
                            DataPremiery = new DateTime(2001, 8, 15, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            DostepneWersje = "dsfds",
                            Gatunek = "Animowany",
                            Jezyk = "Ang",
                            Kraj = "USA",
                            OgrWiekowe = "+8",
                            OpisDlugi = "W bagnie żył olbrzym Shrek, którego cenna samotność została nagle zakłócona inwazją dokuczliwych postaci z bajek. Ślepe myszki buszują w zapasach olbrzyma, zły wilk sypia w jego łóżku, a trzy świnki buszują  po jego samotni. Wszystkie te postaci zostały wypędzone ze swego królestwa przez złego Lorda Farquaada.  Zdecydowany ocalić ich dom – nie mówiąc już o swoim – Shrek porozumiewa się z Farquaadem i wyrusza na ratunek pięknej księżniczce Fionie, która ma zostać żoną Lorda. W misji towarzyszy mu przemądrzały Osioł, który zrobi dla Shreka wszystko z wyjątkiem... przestania mielenia ozorem. Ocalenie księżniczki przed ziejącym ogniem smokiem okazuje się być najmniejszym problemem przyjaciół, kiedy to zostaje odkryty głęboko skrywany, mroczny sekret Fiony.  ",
                            OpisKrotki = "Amerykański film animowany z 2001 w reżyserii Andrew Adamsona i Vicky Jenson, będący adaptacją ilustrowanej książki Shrek! autorstwa Williama Steiga. ",
                            Rezyseria = "Vicky Jenson, Andrew Adamson",
                            Tytul = "Shrek"
                        },
                        new
                        {
                            IdFilm = 3,
                            CzasTrawania = "02:39:00",
                            DataPremiery = new DateTime(2023, 3, 24, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            DostepneWersje = "dsfds",
                            Gatunek = "Kryminał",
                            Jezyk = "Ang",
                            Kraj = "USA",
                            OgrWiekowe = "+16",
                            OpisDlugi = "Ceny idą w górę, więc także stawka za głowę legendarnego zabójcy, Johna Wicka przebiła już sufit. Stając do ostatecznego pojedynku, który może dać mu upragnioną wolność i zasłużoną emeryturę, John wie, że może liczyć tylko na siebie. Dla niego, to nic nowego. To co zmieniło się tym razem, to fakt, że przeciwko sobie ma całą międzynarodową organizację najlepszych płatnych zabójców, a jej nowy szef Markiz de Gramond jest równie wyrafinowany, co bezlitosny. Zanim John stanie z nim oko w oko, będzie musiał odwiedzić kilka kontynentów mierząc się z całą plejadą twardzieli, którzy wiedzą wszystko o zabijaniu. Tuż przed wielkim finałem tej morderczej symfonii, John Wick trafi na trop swojej dalekiej rodziny, której członkowie mogą mieć decydujący wpływ na wynik całej rozgrywki. ",
                            OpisKrotki = "Amerykański thriller neo-noir z 2023 roku, wyreżyserowany przez Chada Stahelskiego i napisany przez Shay'a Hattena i Michaela Fincha. Kontynuacja Johna Wicka 3 z 2019 roku, a także czwarta część serii filmów John Wick. W roli tytułowej wystąpił Keanu Reeves. ",
                            Rezyseria = "Chad Stahelski",
                            Tytul = "John Wick 4"
                        },
                        new
                        {
                            IdFilm = 4,
                            CzasTrawania = "01:39:00",
                            DataPremiery = new DateTime(2023, 3, 17, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            DostepneWersje = "dsfds",
                            Gatunek = "Thriller",
                            Jezyk = "PL",
                            Kraj = "USA",
                            OgrWiekowe = "+15",
                            OpisDlugi = "Tajemniczy wypadek samochodowy zmienia całkowicie życie Maćka (Tomasz Kot). W zdarzeniu ginie jego żona Janina (Karolina Gruszka). Najprawdopodobniej kobieta popełniła samobójstwo. Maciej nie ma jednak pojęcia, dlaczego do wypadku doszło pod Mrągowem, skoro Janina powiedziała, że jedzie na delegację do Krakowa. Pomyliła się? A może kłamała? Zrozpaczony mężczyzna wyrusza w podróż, aby rozwiązać zagadkę jej śmierci. Wkrótce trafia na trop niejakiego Wojnara (Grzegorz Damięcki) – aktora, którego podejrzewa o romans ze zmarłą żoną. Od tego momentu pytania zaczynają się mnożyć, a tragedia zmienia się w skomplikowaną zagadkę. Maciej dochodzi do wniosku, że być może w ogóle nie znał kobiety, którą poślubił… ",
                            OpisKrotki = "Thriller psychologiczny, poruszający trudną tematykę konsekwencji życiowych błędów, straty oraz małżeńskich sekretów, a także miłości dwóch mężczyzn. ",
                            Rezyseria = "Bartosz Konopka",
                            Tytul = "Wyrwa"
                        });
                });

            modelBuilder.Entity("Kino.Data.Models.Miejsce", b =>
                {
                    b.Property<int>("IdMiejsce")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IdMiejsce"));

                    b.Property<bool>("CzyZajete")
                        .HasColumnType("bit");

                    b.Property<int>("Rzad")
                        .HasColumnType("int");

                    b.Property<int>("SeansIdSeans")
                        .HasColumnType("int");

                    b.HasKey("IdMiejsce");

                    b.HasIndex("SeansIdSeans");

                    b.ToTable("Miejsca");
                });

            modelBuilder.Entity("Kino.Data.Models.Sala", b =>
                {
                    b.Property<int>("IdSala")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IdSala"));

                    b.Property<int>("IloscMiejsc")
                        .HasColumnType("int");

                    b.Property<int>("IloscRzedow")
                        .HasColumnType("int");

                    b.Property<int>("Numer")
                        .HasColumnType("int");

                    b.HasKey("IdSala");

                    b.ToTable("Sale");

                    b.HasData(
                        new
                        {
                            IdSala = 1,
                            IloscMiejsc = 30,
                            IloscRzedow = 5,
                            Numer = 1
                        },
                        new
                        {
                            IdSala = 2,
                            IloscMiejsc = 100,
                            IloscRzedow = 30,
                            Numer = 2
                        },
                        new
                        {
                            IdSala = 3,
                            IloscMiejsc = 80,
                            IloscRzedow = 28,
                            Numer = 3
                        },
                        new
                        {
                            IdSala = 4,
                            IloscMiejsc = 50,
                            IloscRzedow = 10,
                            Numer = 4
                        });
                });

            modelBuilder.Entity("Kino.Data.Models.Seans", b =>
                {
                    b.Property<int>("IdSeans")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IdSeans"));

                    b.Property<DateTime>("Data")
                        .HasColumnType("datetime2");

                    b.Property<int>("IdFilm")
                        .HasColumnType("int");

                    b.Property<int>("IdSala")
                        .HasColumnType("int");

                    b.Property<string>("WersjaJez")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("IdSeans");

                    b.HasIndex("IdFilm");

                    b.HasIndex("IdSala");

                    b.ToTable("Seanse");

                    b.HasData(
                        new
                        {
                            IdSeans = 1,
                            Data = new DateTime(2023, 4, 4, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            IdFilm = 1,
                            IdSala = 2,
                            WersjaJez = "PL"
                        },
                        new
                        {
                            IdSeans = 2,
                            Data = new DateTime(2023, 4, 6, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            IdFilm = 2,
                            IdSala = 1,
                            WersjaJez = "PL"
                        },
                        new
                        {
                            IdSeans = 3,
                            Data = new DateTime(2023, 4, 5, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            IdFilm = 3,
                            IdSala = 3,
                            WersjaJez = "PL"
                        },
                        new
                        {
                            IdSeans = 4,
                            Data = new DateTime(2023, 4, 5, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            IdFilm = 4,
                            IdSala = 4,
                            WersjaJez = "PL"
                        });
                });

            modelBuilder.Entity("Kino.Data.Models.Zamowienie", b =>
                {
                    b.Property<int>("IdZamowienie")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IdZamowienie"));

                    b.Property<int>("IdSeans")
                        .HasColumnType("int");

                    b.Property<string>("Imie")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Mail")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nazwisko")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Platnosc")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Status")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("IdZamowienie");

                    b.HasIndex("IdSeans");

                    b.ToTable("Zamowienia");

                    b.HasData(
                        new
                        {
                            IdZamowienie = 1,
                            IdSeans = 1,
                            Imie = "Marcin",
                            Mail = "marcin.kowalski@o2.pl",
                            Nazwisko = "Kowalski",
                            Platnosc = "Online",
                            Status = "Zrealizowane"
                        },
                        new
                        {
                            IdZamowienie = 2,
                            IdSeans = 2,
                            Imie = "Michał",
                            Mail = "michal.kubicki@o2.pl",
                            Nazwisko = "Kubicki",
                            Platnosc = "Online",
                            Status = "Zrealizowane"
                        },
                        new
                        {
                            IdZamowienie = 3,
                            IdSeans = 3,
                            Imie = "Dominik",
                            Mail = "dominik.syska@o2.pl",
                            Nazwisko = "Syska",
                            Platnosc = "Online",
                            Status = "Zrealizowane"
                        },
                        new
                        {
                            IdZamowienie = 4,
                            IdSeans = 4,
                            Imie = "Magda",
                            Mail = "magda.sokolowska@o2.pl",
                            Nazwisko = "Sokołowska",
                            Platnosc = "Online",
                            Status = "Zrealizowane"
                        });
                });

            modelBuilder.Entity("Kino.Data.Models.Bilet", b =>
                {
                    b.HasOne("Kino.Data.Models.Miejsce", "Miejsce")
                        .WithMany()
                        .HasForeignKey("MiejsceIdMiejsce")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Kino.Data.Models.Zamowienie", "Zamowienie")
                        .WithMany()
                        .HasForeignKey("ZamowienieIdZamowienie")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Miejsce");

                    b.Navigation("Zamowienie");
                });

            modelBuilder.Entity("Kino.Data.Models.Miejsce", b =>
                {
                    b.HasOne("Kino.Data.Models.Seans", "Seans")
                        .WithMany()
                        .HasForeignKey("SeansIdSeans")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Seans");
                });

            modelBuilder.Entity("Kino.Data.Models.Seans", b =>
                {
                    b.HasOne("Kino.Data.Models.Film", "Film")
                        .WithMany()
                        .HasForeignKey("IdFilm")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Kino.Data.Models.Sala", "Sala")
                        .WithMany()
                        .HasForeignKey("IdSala")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Film");

                    b.Navigation("Sala");
                });

            modelBuilder.Entity("Kino.Data.Models.Zamowienie", b =>
                {
                    b.HasOne("Kino.Data.Models.Seans", "Seans")
                        .WithMany()
                        .HasForeignKey("IdSeans")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Seans");
                });
#pragma warning restore 612, 618
        }
    }
}
