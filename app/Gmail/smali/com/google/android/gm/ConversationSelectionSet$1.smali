.class final Lcom/google/android/gm/ConversationSelectionSet$1;
.super Ljava/lang/Object;
.source "ConversationSelectionSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationSelectionSet;
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
        "Lcom/google/android/gm/ConversationSelectionSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationSelectionSet;
    .locals 10
    .parameter "source"

    .prologue
    .line 281
    new-instance v7, Lcom/google/android/gm/ConversationSelectionSet;

    invoke-direct {v7}, Lcom/google/android/gm/ConversationSelectionSet;-><init>()V

    .line 282
    .local v7, result:Lcom/google/android/gm/ConversationSelectionSet;
    const-class v8, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 284
    .local v3, conversations:[Landroid/os/Parcelable;
    move-object v1, v3

    .local v1, arr$:[Landroid/os/Parcelable;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 285
    .local v6, parceled:Landroid/os/Parcelable;
    move-object v0, v6

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    move-object v2, v0

    .line 286
    .local v2, conversation:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/google/android/gm/ConversationSelectionSet;->put(Ljava/lang/Long;Lcom/google/android/gm/ConversationInfo;)V

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    .end local v2           #conversation:Lcom/google/android/gm/ConversationInfo;
    .end local v6           #parceled:Landroid/os/Parcelable;
    :cond_0
    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationSelectionSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gm/ConversationSelectionSet;
    .locals 1
    .parameter "size"

    .prologue
    .line 293
    new-array v0, p1, [Lcom/google/android/gm/ConversationSelectionSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ConversationSelectionSet$1;->newArray(I)[Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v0

    return-object v0
.end method
