.class public final Lcom/flurry/android/Offer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/flurry/android/AdImage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/AdImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/flurry/android/Offer;->a:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/flurry/android/Offer;->b:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/flurry/android/Offer;->c:Lcom/flurry/android/AdImage;

    .line 15
    return-void
.end method


# virtual methods
.method public final getImage()Lcom/flurry/android/AdImage;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/Offer;->c:Lcom/flurry/android/AdImage;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flurry/android/Offer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/flurry/android/Offer;->b:Ljava/lang/String;

    return-object v0
.end method
