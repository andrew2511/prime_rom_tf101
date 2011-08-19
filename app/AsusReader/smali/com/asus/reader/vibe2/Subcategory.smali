.class public Lcom/asus/reader/vibe2/Subcategory;
.super Ljava/lang/Object;
.source "Subcategory.java"


# instance fields
.field private contentdetailurl:Ljava/lang/String;

.field private contenturl:Ljava/lang/String;

.field private indivspname:Ljava/lang/String;

.field private maincategory:Ljava/lang/String;

.field private maincategoryid:Ljava/lang/String;

.field private packageurl:Ljava/lang/String;

.field private recommendurl:Ljava/lang/String;

.field private subcategoryid:Ljava/lang/String;

.field private subcategoryimgurl:Ljava/lang/String;

.field private subcategoryname:Ljava/lang/String;

.field private subcategoryurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->indivspname:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryid:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryname:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryimgurl:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryurl:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->contenturl:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->contentdetailurl:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->recommendurl:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->packageurl:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->maincategory:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->maincategoryid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMainCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->maincategory:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->maincategoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryname:Ljava/lang/String;

    return-object v0
.end method

.method public setContentDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "_contentdetailurl"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->contentdetailurl:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "_contenturl"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->contenturl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMainCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "_maincategory"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->maincategory:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setMainCategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "_maincategory"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->maincategoryid:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPackageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "_packageurl"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->packageurl:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setRecommendUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "_recommendurl"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->recommendurl:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSubcategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryid"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryid:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSubcategoryImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryimgurl"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryimgurl:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSubcategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryname"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryname:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSubcategoryUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryurl"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/asus/reader/vibe2/Subcategory;->subcategoryurl:Ljava/lang/String;

    .line 92
    return-void
.end method
