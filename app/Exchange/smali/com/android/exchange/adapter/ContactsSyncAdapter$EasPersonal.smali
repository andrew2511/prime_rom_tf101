.class public final Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EasPersonal"
.end annotation


# instance fields
.field anniversary:Ljava/lang/String;

.field fileAs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasData()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
