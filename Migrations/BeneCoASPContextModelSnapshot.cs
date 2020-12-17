﻿// <auto-generated />
using System;
using BeneCoASP.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace BeneCoASP.Migrations
{
    [DbContext(typeof(BeneCoASPContext))]
    partial class BeneCoASPContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.10")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("BeneCoASP.Models.Benefit", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("PlanCode")
                        .HasColumnType("int");

                    b.Property<int>("StaffCode")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("PlanCode");

                    b.HasIndex("StaffCode");

                    b.ToTable("Benefit");
                });

            modelBuilder.Entity("BeneCoASP.Models.Job", b =>
                {
                    b.Property<int>("JobCode")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("StaffCode")
                        .HasColumnType("int");

                    b.Property<bool>("isAvailable")
                        .HasColumnType("bit");

                    b.HasKey("JobCode");

                    b.HasIndex("StaffCode");

                    b.ToTable("Job");
                });

            modelBuilder.Entity("BeneCoASP.Models.Plan", b =>
                {
                    b.Property<int>("PlanCode")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("EndDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("PlanDescription")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("PlanCode");

                    b.ToTable("Plan");
                });

            modelBuilder.Entity("BeneCoASP.Models.Staff", b =>
                {
                    b.Property<int>("StaffCode")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("Birth")
                        .HasColumnType("datetime2");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("StaffCode");

                    b.ToTable("Staff");
                });

            modelBuilder.Entity("BeneCoASP.Models.Benefit", b =>
                {
                    b.HasOne("BeneCoASP.Models.Plan", "Plan")
                        .WithMany("Benefits")
                        .HasForeignKey("PlanCode")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("BeneCoASP.Models.Staff", "Staff")
                        .WithMany("Benefits")
                        .HasForeignKey("StaffCode")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("BeneCoASP.Models.Job", b =>
                {
                    b.HasOne("BeneCoASP.Models.Staff", "Staff")
                        .WithMany("Jobs")
                        .HasForeignKey("StaffCode")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
