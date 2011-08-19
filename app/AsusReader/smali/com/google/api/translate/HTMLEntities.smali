.class public Lcom/google/api/translate/HTMLEntities;
.super Ljava/lang/Object;
.source "HTMLEntities.java"


# static fields
.field private static final html_entities_table:[[Ljava/lang/Object;

.field private static final htmlentities_map:Ljava/util/Hashtable;

.field private static final unhtmlentities_map:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x26

    const/16 v8, 0x22

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 22
    const/16 v0, 0xfa

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    const-string v3, "&Aacute;"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    const-string v3, "&aacute;"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    const-string v3, "&Acirc;"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&acirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&acute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&AElig;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&aelig;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Agrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&agrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&alefsym;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2135

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Alpha;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x391

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&alpha;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&amp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&and;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2227

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ang;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2220

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Aring;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&aring;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&asymp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2248

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Atilde;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&atilde;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Auml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&auml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&bdquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x201e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Beta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x392

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&beta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&brvbar;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&bull;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2022

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&cap;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2229

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ccedil;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ccedil;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&cedil;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&cent;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Chi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&chi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    const-string v3, "&circ;"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2c6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/16 v1, 0x23

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&clubs;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2663

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&cong;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2245

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&copy;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    const-string v3, "&crarr;"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x21b5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/16 v1, 0x27

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&cup;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x222a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&curren;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&dagger;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2020

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Dagger;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2021

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&darr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2193

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&dArr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x21d3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&deg;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Delta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x394

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&delta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&diams;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2666

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&divide;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Eacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&eacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ecirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xca

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ecirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xea

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Egrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&egrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&empty;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2205

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&emsp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2003

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ensp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2002

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Epsilon;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x395

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&epsilon;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&equiv;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2261

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Eta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x397

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&eta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ETH;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&eth;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Euml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xcb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&euml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xeb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&euro;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x20ac

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&exist;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2203

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&fnof;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x192

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&forall;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2200

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&frac12;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xbd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&frac14;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xbc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&frac34;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xbe

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&frasl;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2044

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Gamma;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x393

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&gamma;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ge;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2265

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&harr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2194

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&hArr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x21d4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&hearts;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2665

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&hellip;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2026

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Iacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xcd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&iacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xed

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Icirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xce

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&icirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xee

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&iexcl;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Igrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&igrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xec

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&image;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2111

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&infin;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x221e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&int;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x222b

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Iota;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x399

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&iota;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&iquest;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xbf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&isin;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2208

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Iuml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xcf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&iuml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xef

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Kappa;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x39a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&kappa;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3ba

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Lambda;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x39b

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lambda;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3bb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lang;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2329

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&laquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xab

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&larr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2190

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lArr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x21d0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lceil;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2308

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ldquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x201c

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&le;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2264

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lfloor;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x230a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lowast;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2217

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&loz;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x25ca

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lrm;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x200e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lsaquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2039

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&lsquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2018

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&macr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xaf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&mdash;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2014

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&micro;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&middot;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&minus;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2212

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Mu;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x39c

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&mu;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3bc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&nabla;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2207

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&nbsp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ndash;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2013

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ne;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2260

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ni;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x220b

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&not;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xac

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&notin;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2209

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&nsub;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2284

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ntilde;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ntilde;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Nu;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x39d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&nu;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3bd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Oacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&oacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ocirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ocirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&OElig;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x152

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&oelig;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x153

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ograve;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ograve;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&oline;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x203e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Omega;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&omega;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Omicron;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x39f

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&omicron;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3bf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&oplus;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2295

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&or;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2228

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ordf;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xaa

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ordm;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xba

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Oslash;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&oslash;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Otilde;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&otilde;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&otimes;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2297

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ouml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ouml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&para;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&part;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2202

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&permil;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2030

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&perp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x22a5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Phi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&phi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Pi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&pi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&piv;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3d6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&plusmn;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&pound;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&prime;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2032

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Prime;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2033

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&prod;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x220f

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&prop;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x221d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Psi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&psi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&quot;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&radic;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x221a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rang;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x232a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&raquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xbb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rarr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2192

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rArr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x21d2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rceil;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2309

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rdquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x201d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&real;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x211c

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&reg;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xae

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rfloor;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x230b

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Rho;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rho;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rlm;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x200f

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rsaquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x203a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&rsquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2019

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sbquo;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x201a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Scaron;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x160

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&scaron;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x161

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sdot;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x22c5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sect;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&shy;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xad

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Sigma;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sigma;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sigmaf;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sim;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x223c

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&spades;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2660

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sub;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2282

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sube;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2286

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sum;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2211

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sup1;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sup2;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sup3;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&sup;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2283

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&supe;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2287

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&szlig;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xdf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Tau;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&tau;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&there4;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2234

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Theta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x398

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&theta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&thetasym;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3d1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&thinsp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2009

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&THORN;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xde

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&thorn;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xfe

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&tilde;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2dc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&times;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&trade;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2122

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Uacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xda

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&uacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xfa

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&uarr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2191

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&uArr;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x21d1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ucirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xdb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ucirc;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xfb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Ugrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&ugrave;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&uml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&upsih;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3d2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Upsilon;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3a5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&upsilon;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3c5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Uuml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xdc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&uuml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xfc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&weierp;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2118

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Xi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x39e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&xi;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3be

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Yacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xdd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&yacute;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xfd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&yen;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&yuml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Yuml;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x178

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&Zeta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x396

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&zeta;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x3b6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&zwj;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x200d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    const-string v4, "&zwnj;"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x200c

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/translate/HTMLEntities;->html_entities_table:[[Ljava/lang/Object;

    .line 277
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/api/translate/HTMLEntities;->htmlentities_map:Ljava/util/Hashtable;

    .line 282
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/api/translate/HTMLEntities;->unhtmlentities_map:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Lcom/google/api/translate/HTMLEntities;->initializeEntitiesTables()V

    .line 293
    return-void
.end method

.method private static initializeEntitiesTables()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/google/api/translate/HTMLEntities;->html_entities_table:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 301
    sget-object v1, Lcom/google/api/translate/HTMLEntities;->htmlentities_map:Ljava/util/Hashtable;

    sget-object v2, Lcom/google/api/translate/HTMLEntities;->html_entities_table:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aget-object v2, v2, v5

    sget-object v3, Lcom/google/api/translate/HTMLEntities;->html_entities_table:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v1, Lcom/google/api/translate/HTMLEntities;->unhtmlentities_map:Ljava/util/Hashtable;

    sget-object v2, Lcom/google/api/translate/HTMLEntities;->html_entities_table:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    sget-object v3, Lcom/google/api/translate/HTMLEntities;->html_entities_table:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return-void
.end method

.method public static unhtmlentities(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "str"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 361
    sget-object v6, Lcom/google/api/translate/HTMLEntities;->htmlentities_map:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    invoke-static {}, Lcom/google/api/translate/HTMLEntities;->initializeEntitiesTables()V

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 368
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 369
    .local v1, ch:C
    const/16 v6, 0x26

    if-ne v1, v6, :cond_7

    .line 370
    const/16 v6, 0x3b

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 371
    .local v5, semi:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    sub-int v6, v5, v3

    const/4 v7, 0x7

    if-le v6, v7, :cond_2

    .line 372
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    .end local v5           #semi:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    .restart local v5       #semi:I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, entity:Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 381
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_5

    .line 382
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_4

    .line 383
    new-instance v4, Ljava/lang/Integer;

    const/4 v6, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 391
    .local v4, iso:Ljava/lang/Integer;
    :goto_2
    if-nez v4, :cond_6

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    :goto_3
    move v3, v5

    .line 397
    goto :goto_1

    .line 386
    .end local v4           #iso:Ljava/lang/Integer;
    :cond_4
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .restart local v4       #iso:Ljava/lang/Integer;
    goto :goto_2

    .line 389
    .end local v4           #iso:Ljava/lang/Integer;
    :cond_5
    sget-object v6, Lcom/google/api/translate/HTMLEntities;->unhtmlentities_map:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .restart local v4       #iso:Ljava/lang/Integer;
    goto :goto_2

    .line 394
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 398
    .end local v2           #entity:Ljava/lang/String;
    .end local v4           #iso:Ljava/lang/Integer;
    .end local v5           #semi:I
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 401
    .end local v1           #ch:C
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
