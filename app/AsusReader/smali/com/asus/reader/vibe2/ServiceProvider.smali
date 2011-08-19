.class public Lcom/asus/reader/vibe2/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# instance fields
.field private spindex:Ljava/lang/String;

.field private spname:Ljava/lang/String;

.field private spsubcategorycount:Ljava/lang/String;

.field private subcategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Subcategory;",
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

    iput-object v0, p0, Lcom/asus/reader/vibe2/ServiceProvider;->spname:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/ServiceProvider;->spindex:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/ServiceProvider;->spsubcategorycount:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/vibe2/ServiceProvider;->subcategories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/asus/reader/vibe2/ServiceProvider;->spname:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcategory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Subcategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/reader/vibe2/ServiceProvider;->subcategories:Ljava/util/List;

    return-object v0
.end method

.method public setSPIndex(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/asus/reader/vibe2/ServiceProvider;->spindex:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSPName(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/asus/reader/vibe2/ServiceProvider;->spname:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setSPSubcategoryCount(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/asus/reader/vibe2/ServiceProvider;->spsubcategorycount:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSubcategoryAdd(Lcom/asus/reader/vibe2/Subcategory;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/vibe2/ServiceProvider;->subcategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method
