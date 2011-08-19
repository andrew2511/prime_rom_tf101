.class public Lcom/asus/reader/vibe2/SubcategorySet;
.super Ljava/lang/Object;
.source "SubcategorySet.java"


# instance fields
.field private subcategoryid:Ljava/lang/String;

.field private subcategoryname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategorySet;->subcategoryid:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategorySet;->subcategoryname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setSubcategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryid"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategorySet;->subcategoryid:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSubcategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryname"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategorySet;->subcategoryname:Ljava/lang/String;

    .line 26
    return-void
.end method
