.class final Lcom/android/email/activity/MessageListFragment$State$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/email/activity/MessageListFragment$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/email/activity/MessageListFragment$State;
    .locals 2
    .parameter "in"

    .prologue
    .line 1388
    new-instance v0, Lcom/android/email/activity/MessageListFragment$State;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/email/activity/MessageListFragment$State;-><init>(Landroid/os/Parcel;Lcom/android/email/activity/MessageListFragment$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1386
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$State$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/email/activity/MessageListFragment$State;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/email/activity/MessageListFragment$State;
    .locals 1
    .parameter "size"

    .prologue
    .line 1392
    new-array v0, p1, [Lcom/android/email/activity/MessageListFragment$State;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1386
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$State$1;->newArray(I)[Lcom/android/email/activity/MessageListFragment$State;

    move-result-object v0

    return-object v0
.end method
