.class public Lcom/google/android/apps/books/app/HelpFragment$Arguments;
.super Ljava/lang/Object;
.source "HelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/HelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation


# static fields
.field private static final AUTHOR:Ljava/lang/String; = "author"

.field private static final PAGE_NUMBER:Ljava/lang/String; = "pageTitle"

.field private static final READING_MODE:Ljava/lang/String; = "readingMode"

.field private static final READING_POSITION:Ljava/lang/String; = "position"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VOLUME_ID:Ljava/lang/String; = "volumeId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->getReadingMode(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->getReadingPosition(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->getPageNumber(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->getAuthor(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "volumeId"
    .parameter "readingMode"
    .parameter "readingPosition"
    .parameter "pageNumber"
    .parameter "title"
    .parameter "author"

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, result:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 52
    const-string v1, "volumeId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    const-string v1, "readingMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    if-eqz p2, :cond_1

    .line 56
    const-string v1, "position"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    if-eqz p3, :cond_2

    .line 59
    const-string v1, "pageTitle"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    if-eqz p4, :cond_3

    .line 62
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3
    if-eqz p5, :cond_4

    .line 65
    const-string v1, "author"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_4
    return-object v0
.end method

.method private static getAuthor(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 91
    const-string v0, "author"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPageNumber(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 83
    const-string v0, "pageTitle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReadingMode(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 75
    const-string v0, "readingMode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getReadingPosition(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 79
    const-string v0, "position"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 87
    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 71
    const-string v0, "volumeId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
