.class public final Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field city:Ljava/lang/String;

.field code:Ljava/lang/String;

.field country:Ljava/lang/String;

.field state:Ljava/lang/String;

.field street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasData()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
