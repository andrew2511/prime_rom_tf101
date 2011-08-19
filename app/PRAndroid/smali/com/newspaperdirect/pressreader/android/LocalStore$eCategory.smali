.class public final enum Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;
.super Ljava/lang/Enum;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "eCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

.field private static final synthetic ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

.field public static final enum FavoriteList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

.field public static final enum LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

.field public static final enum RecentList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

.field public static final enum SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    const-string v1, "CountryList"

    invoke-direct {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 91
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    const-string v1, "LanguageList"

    invoke-direct {v0, v1, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 92
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    const-string v1, "FavoriteList"

    invoke-direct {v0, v1, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->FavoriteList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 93
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    const-string v1, "RecentList"

    invoke-direct {v0, v1, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->RecentList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 94
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    const-string v1, "SearchResult"

    invoke-direct {v0, v1, v6}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->FavoriteList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->RecentList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    return-object p0
.end method

.method public static values()[Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    array-length v1, v0

    new-array v2, v1, [Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
