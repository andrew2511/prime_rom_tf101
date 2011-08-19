.class public Lcom/asus/reader/vibe2/Package;
.super Ljava/lang/Object;
.source "Package.java"


# instance fields
.field private currency:Ljava/lang/String;

.field private maincategoryid:Ljava/lang/String;

.field private packagedesc:Ljava/lang/String;

.field private packageid:Ljava/lang/String;

.field private paymenturi:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private subcategoryid:Ljava/lang/String;

.field private subcategoryname:Ljava/lang/String;

.field private subset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/SubcategorySet;",
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

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->packageid:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->paymenturi:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->packagedesc:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->price:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->currency:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->subcategoryid:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->subcategoryname:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->maincategoryid:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/vibe2/Package;->subset:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/asus/reader/vibe2/Package;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/asus/reader/vibe2/Package;->maincategoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/reader/vibe2/Package;->packagedesc:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/reader/vibe2/Package;->packageid:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/reader/vibe2/Package;->paymenturi:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/reader/vibe2/Package;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "_currency"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/asus/reader/vibe2/Package;->currency:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setMainCategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/asus/reader/vibe2/Package;->maincategoryid:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPackageDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "_packagedesc"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/asus/reader/vibe2/Package;->packagedesc:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0
    .parameter "_packageid"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/asus/reader/vibe2/Package;->packageid:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPaymentUri(Ljava/lang/String;)V
    .locals 0
    .parameter "_paymenturi"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/asus/reader/vibe2/Package;->paymenturi:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "_price"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/asus/reader/vibe2/Package;->price:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSubcategorySetAdd(Lcom/asus/reader/vibe2/SubcategorySet;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/asus/reader/vibe2/Package;->subset:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method
