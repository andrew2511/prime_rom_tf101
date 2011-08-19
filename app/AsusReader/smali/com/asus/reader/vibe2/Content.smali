.class public Lcom/asus/reader/vibe2/Content;
.super Lcom/asus/reader/vibe2/SubcategoryContents;
.source "Content.java"


# instance fields
.field private attr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private downloadmimetype:Ljava/lang/String;

.field private downloaduri:Ljava/lang/String;

.field private mBookPath:Ljava/lang/String;

.field private mLP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Package;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentURI:[Ljava/lang/String;

.field private premiummimetype:Ljava/lang/String;

.field private premiumuri:Ljava/lang/String;

.field private previewmimetype:Ljava/lang/String;

.field private previewuri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/asus/reader/vibe2/SubcategoryContents;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Content;->previewuri:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Content;->premiumuri:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Content;->downloaduri:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Content;->previewmimetype:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Content;->premiummimetype:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/Content;->downloadmimetype:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/vibe2/Content;->attr:Ljava/util/List;

    .line 20
    iput-object v1, p0, Lcom/asus/reader/vibe2/Content;->mPaymentURI:[Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/asus/reader/vibe2/Content;->mBookPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone(Lcom/asus/reader/vibe2/SubcategoryContents;)V
    .locals 1
    .parameter "subcontent"

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTotalCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setTotalCount(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setSPName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setSubcategoryId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setSubcategoryName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setSPContentId(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getContentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setContentName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTag1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setTag1(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getTag2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setTag2(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getOSSet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setOSSet(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setMainCategory(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/vibe2/Content;->setMainCategoryId(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public getAttributeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    const-string v1, "\n"

    .line 112
    .local v1, attrString:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/reader/vibe2/Content;->attr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/vibe2/Attribute;

    .line 113
    .local v0, att:Lcom/asus/reader/vibe2/Attribute;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    .end local v0           #att:Lcom/asus/reader/vibe2/Attribute;
    :cond_0
    return-object v1
.end method

.method public getBookPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->mBookPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->downloadmimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->downloaduri:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->mLP:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentURI()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->mPaymentURI:[Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->premiummimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->premiumuri:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->previewuri:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttr()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->attr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public queryPaymentURL()V
    .locals 5

    .prologue
    .line 136
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/asus/reader/vibe2/VibeAgent;->getPackages(Lcom/asus/reader/vibe2/Content;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/reader/vibe2/Content;->mLP:Ljava/util/List;

    .line 137
    iget-object v3, p0, Lcom/asus/reader/vibe2/Content;->mLP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/asus/reader/vibe2/Content;->mLP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/asus/reader/vibe2/Content;->mPaymentURI:[Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, i:I
    iget-object v3, p0, Lcom/asus/reader/vibe2/Content;->mLP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/vibe2/Package;

    .line 141
    .local v2, p:Lcom/asus/reader/vibe2/Package;
    iget-object v3, p0, Lcom/asus/reader/vibe2/Content;->mPaymentURI:[Ljava/lang/String;

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    invoke-virtual {v4, v2, p0}, Lcom/asus/reader/vibe2/VibeAgent;->getPaymentURI(Lcom/asus/reader/vibe2/Package;Lcom/asus/reader/vibe2/Content;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/asus/reader/vibe2/Package;
    :cond_0
    return-void
.end method

.method public setAttributeAdd(Lcom/asus/reader/vibe2/Attribute;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/asus/reader/vibe2/Content;->attr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public setBookPath(Ljava/lang/String;)V
    .locals 0
    .parameter "bookpath"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/asus/reader/vibe2/Content;->mBookPath:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setDownloadMimetype(Ljava/lang/String;)V
    .locals 3
    .parameter "_downloadmimetype"

    .prologue
    .line 99
    const-string v0, "vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDownloadMimetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object p1, p0, Lcom/asus/reader/vibe2/Content;->downloadmimetype:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setDownloadUri(Ljava/lang/String;)V
    .locals 3
    .parameter "_downloaduri"

    .prologue
    .line 66
    const-string v0, "vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDownloadUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, Lcom/asus/reader/vibe2/Content;->downloaduri:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPremiumMimetype(Ljava/lang/String;)V
    .locals 3
    .parameter "_premiummimetype"

    .prologue
    .line 88
    const-string v0, "vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPremiumMimetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/asus/reader/vibe2/Content;->premiummimetype:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setPremiumUri(Ljava/lang/String;)V
    .locals 3
    .parameter "_premiumuri"

    .prologue
    .line 55
    const-string v0, "vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPremiumUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/asus/reader/vibe2/Content;->premiumuri:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPreviewMimetype(Ljava/lang/String;)V
    .locals 3
    .parameter "_previewmimetype"

    .prologue
    .line 77
    const-string v0, "vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewMimetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/asus/reader/vibe2/Content;->previewmimetype:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPreviewUri(Ljava/lang/String;)V
    .locals 3
    .parameter "_previewuri"

    .prologue
    .line 44
    const-string v0, "vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/asus/reader/vibe2/Content;->previewuri:Ljava/lang/String;

    .line 46
    return-void
.end method
