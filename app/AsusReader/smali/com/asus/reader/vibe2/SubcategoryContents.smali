.class public Lcom/asus/reader/vibe2/SubcategoryContents;
.super Ljava/lang/Object;
.source "SubcategoryContents.java"


# instance fields
.field private contentname:Ljava/lang/String;

.field private coverpicuri:Ljava/lang/String;

.field private isfree:Ljava/lang/String;

.field private maincategory:Ljava/lang/String;

.field private maincategoryid:Ljava/lang/String;

.field private osset:Ljava/lang/String;

.field private paid:Ljava/lang/String;

.field private spcontentid:Ljava/lang/String;

.field private spname:Ljava/lang/String;

.field private subcategoryid:Ljava/lang/String;

.field private subcategoryname:Ljava/lang/String;

.field private tag1:Ljava/lang/String;

.field private tag2:Ljava/lang/String;

.field private totalcount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spname:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryid:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryname:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spcontentid:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->contentname:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->coverpicuri:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->isfree:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->paid:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag1:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag2:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->osset:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategory:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategoryid:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->totalcount:Ljava/lang/String;

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;
    .locals 2
    .parameter "c"

    .prologue
    .line 44
    new-instance v0, Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-direct {v0}, Lcom/asus/reader/vibe2/SubcategoryContents;-><init>()V

    .line 45
    .local v0, subcategoryContents:Lcom/asus/reader/vibe2/SubcategoryContents;
    const-string v1, "_spname"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSPName(Ljava/lang/String;)V

    .line 46
    const-string v1, "_subcategoryid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSubcategoryId(Ljava/lang/String;)V

    .line 47
    const-string v1, "_subcategoryname"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSubcategoryName(Ljava/lang/String;)V

    .line 48
    const-string v1, "_spcontentid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSPContentId(Ljava/lang/String;)V

    .line 49
    const-string v1, "_contentname"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setContentName(Ljava/lang/String;)V

    .line 50
    const-string v1, "_coverpicuri"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setCoverPicUri(Ljava/lang/String;)V

    .line 51
    const-string v1, "_isfree"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setIsFree(Ljava/lang/String;)V

    .line 52
    const-string v1, "_paid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setPaid(Ljava/lang/String;)V

    .line 53
    const-string v1, "_tag1"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTag1(Ljava/lang/String;)V

    .line 54
    const-string v1, "_tag2"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTag2(Ljava/lang/String;)V

    .line 55
    const-string v1, "_osset"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setOSSet(Ljava/lang/String;)V

    .line 56
    const-string v1, "_maincategory"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setMainCategory(Ljava/lang/String;)V

    .line 57
    const-string v1, "_maincategoryid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setMainCategoryId(Ljava/lang/String;)V

    .line 58
    const-string v1, "_totalcount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTotalCount(Ljava/lang/String;)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/asus/reader/vibe2/SubcategoryContents;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-direct {v0}, Lcom/asus/reader/vibe2/SubcategoryContents;-><init>()V

    .line 26
    .local v0, new_subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTotalCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTotalCount(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSPName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSubcategoryId(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSubcategoryName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setSPContentId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setContentName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getCoverPicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setCoverPicUri(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getIsFree()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setIsFree(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getPaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setPaid(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTag1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTag1(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTag2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setTag2(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getOSSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setOSSet(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setMainCategory(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->setMainCategoryId(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->clone()Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/asus/reader/vibe2/Content;)Z
    .locals 2
    .parameter "content"

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getSubcategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getSubcategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getSPContentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getContentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->contentname:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverPicUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->coverpicuri:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFree()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->isfree:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategory:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getOSSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->osset:Ljava/lang/String;

    return-object v0
.end method

.method public getPaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->paid:Ljava/lang/String;

    return-object v0
.end method

.method public getSPContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spcontentid:Ljava/lang/String;

    return-object v0
.end method

.method public getSPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spname:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryname:Ljava/lang/String;

    return-object v0
.end method

.method public getTag1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag1:Ljava/lang/String;

    return-object v0
.end method

.method public getTag2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag2:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->totalcount:Ljava/lang/String;

    return-object v0
.end method

.method public setContentName(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->contentname:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setCoverPicUri(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->coverpicuri:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setIsFree(Ljava/lang/String;)V
    .locals 0
    .parameter "_isfree"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->isfree:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setMainCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "_maincategory"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategory:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setMainCategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "_maincategory"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategoryid:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setOSSet(Ljava/lang/String;)V
    .locals 0
    .parameter "_osset"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->osset:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setPaid(Ljava/lang/String;)V
    .locals 0
    .parameter "_paid"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->paid:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSPContentId(Ljava/lang/String;)V
    .locals 0
    .parameter "contentid"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spcontentid:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setSPName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spname:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSubcategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryid"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryid:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setSubcategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "_subcategoryname"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryname:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setTag1(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag1:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setTag2(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag2:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setTotalCount(Ljava/lang/String;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->totalcount:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .parameter "userName"

    .prologue
    .line 232
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_spname"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "_subcategoryid"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "_subcategoryname"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->subcategoryname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "_spcontentid"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->spcontentid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "_contentname"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->contentname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "_coverpicuri"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->coverpicuri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "_isfree"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->isfree:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "_paid"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->paid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "_tag1"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "_tag2"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->tag2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "_osset"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->osset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "_maincategory"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "_maincategoryid"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->maincategoryid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "_totalcount"

    iget-object v2, p0, Lcom/asus/reader/vibe2/SubcategoryContents;->totalcount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "purchase_time"

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v1, "sync_time"

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    const-string v1, "user_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v0
.end method
