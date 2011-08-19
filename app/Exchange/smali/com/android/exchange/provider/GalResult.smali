.class public Lcom/android/exchange/provider/GalResult;
.super Ljava/lang/Object;
.source "GalResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/GalResult$1;,
        Lcom/android/exchange/provider/GalResult$GalData;
    }
.end annotation


# instance fields
.field public galData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/provider/GalResult$GalData;",
            ">;"
        }
    .end annotation
.end field

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public addGalData(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "displayName"
    .parameter "emailAddress"

    .prologue
    .line 38
    iget-object v6, p0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/exchange/provider/GalResult$GalData;

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/provider/GalResult$GalData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/GalResult$1;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public addGalData(Lcom/android/exchange/provider/GalResult$GalData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method
