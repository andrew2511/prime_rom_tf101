.class public Lcom/amazon/kcp/store/models/internal/ReviewInfo;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "ReviewInfo.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IReviewInfo;


# instance fields
.field private body:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private ordinalNumber:I

.field private rating:F

.field private reviewer:Ljava/lang/String;

.field private summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->empty()V

    .line 25
    return-void
.end method


# virtual methods
.method public cloneModel()Lcom/amazon/kcp/store/models/internal/ReviewInfo;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;-><init>()V

    .line 34
    .local v0, info:Lcom/amazon/kcp/store/models/internal/ReviewInfo;
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->reviewer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setReviewer(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setLocation(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->rating:F

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setRating(F)V

    .line 37
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setDate(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setBody(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setSummary(Ljava/lang/String;)V

    .line 40
    iget v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->ordinalNumber:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setOrdinalNumber(I)V

    .line 42
    return-object v0
.end method

.method public empty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->reviewer:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->location:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->rating:F

    .line 53
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->date:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->body:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->summary:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->ordinalNumber:I

    .line 57
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinalNumber()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->ordinalNumber:I

    return v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->rating:F

    return v0
.end method

.method public getReviewer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->reviewer:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->body:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->date:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->location:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setOrdinalNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 162
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->ordinalNumber:I

    .line 163
    return-void
.end method

.method public setRating(F)V
    .locals 0
    .parameter "rating"

    .prologue
    .line 80
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->rating:F

    .line 81
    return-void
.end method

.method public setReviewer(Ljava/lang/String;)V
    .locals 0
    .parameter "reviewer"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->reviewer:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->summary:Ljava/lang/String;

    .line 145
    return-void
.end method
