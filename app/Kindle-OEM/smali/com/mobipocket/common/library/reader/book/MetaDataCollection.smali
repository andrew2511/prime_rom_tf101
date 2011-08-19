.class public Lcom/mobipocket/common/library/reader/book/MetaDataCollection;
.super Ljava/lang/Object;
.source "MetaDataCollection.java"


# instance fields
.field public ISBN_code:Ljava/lang/String;

.field public asin:Ljava/lang/String;

.field public authors:[Ljava/lang/String;

.field public drm_commerce_id:Ljava/lang/String;

.field public drm_ebookbase_book_id:Ljava/lang/String;

.field public drm_server_id:Ljava/lang/String;

.field public hasFakeCover:I

.field public imprint:Ljava/lang/String;

.field public publisher:Ljava/lang/String;

.field public publishing_date:Ljava/lang/String;

.field public sample:I

.field public subject:Ljava/lang/String;

.field public subject_code:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public version_number:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->version_number:I

    .line 80
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->sample:I

    .line 91
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->hasFakeCover:I

    return-void
.end method
