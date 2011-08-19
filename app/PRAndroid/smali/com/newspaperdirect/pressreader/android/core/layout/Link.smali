.class public Lcom/newspaperdirect/pressreader/android/core/layout/Link;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;
    }
.end annotation


# instance fields
.field private mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->mRects:Ljava/util/List;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Link;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Link;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->mType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Link;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->mTarget:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Link;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->mRects:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getRects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->mRects:Ljava/util/List;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->mType:Ljava/lang/String;

    return-object v0
.end method
