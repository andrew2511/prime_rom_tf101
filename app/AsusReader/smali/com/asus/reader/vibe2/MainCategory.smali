.class public Lcom/asus/reader/vibe2/MainCategory;
.super Ljava/lang/Object;
.source "MainCategory.java"


# instance fields
.field private maincategoryid:Ljava/lang/String;

.field private maincategoryimgurl:Ljava/lang/String;

.field private maincategorylocale:Ljava/lang/String;

.field private maincategoryname:Ljava/lang/String;

.field private splist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryid:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryname:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategorylocale:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryimgurl:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->splist:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMainCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCategoryLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategorylocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryname:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProvider()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/ServiceProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->splist:Ljava/util/List;

    return-object v0
.end method

.method public setMainCategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMainCategoryImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "_url"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryimgurl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMainCategoryLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategorylocale:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMainCategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/asus/reader/vibe2/MainCategory;->maincategoryname:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setServiceProviderAdd(Lcom/asus/reader/vibe2/ServiceProvider;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/asus/reader/vibe2/MainCategory;->splist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
