.class public Lcom/mobipocket/common/library/reader/GuideItem;
.super Ljava/lang/Object;
.source "GuideItem.java"


# static fields
.field public static final NAME_START:Ljava/lang/String; = "start"

.field public static final NAME_TOC:Ljava/lang/String; = "toc"

.field static final NET_ANCHOR:B = 0x0t

.field static final NET_GUIDE:B = 0x2t


# instance fields
.field private pAbsPosition:I

.field private final pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

.field private final pName:Ljava/lang/String;

.field private final pTitle:Ljava/lang/String;

.field private final pType:B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;BLcom/mobipocket/common/library/reader/IndexDescriptor;)V
    .locals 0
    .parameter "title"
    .parameter "name"
    .parameter "type"
    .parameter "indexDescriptor"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pName:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pTitle:Ljava/lang/String;

    .line 87
    iput-byte p3, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pType:B

    .line 88
    iput-object p4, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    .line 89
    return-void
.end method


# virtual methods
.method getAbsPosition()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pAbsPosition:I

    return v0
.end method

.method getIndexDescriptor()Lcom/mobipocket/common/library/reader/IndexDescriptor;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pTitle:Ljava/lang/String;

    return-object v0
.end method

.method getType()B
    .locals 1

    .prologue
    .line 98
    iget-byte v0, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pType:B

    return v0
.end method

.method public isIndexSearchGuide()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAbsPosition(I)V
    .locals 0
    .parameter "absPosition"

    .prologue
    .line 116
    iput p1, p0, Lcom/mobipocket/common/library/reader/GuideItem;->pAbsPosition:I

    .line 117
    return-void
.end method
