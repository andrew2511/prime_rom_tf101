.class Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinImeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final mData:[Ljava/lang/String;

.field public final mTag:I

.field public mTime:J


# direct methods
.method public constructor <init>(JI[Ljava/lang/String;)V
    .locals 0
    .parameter "time"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p3, p0, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mTag:I

    .line 139
    iput-wide p1, p0, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mTime:J

    .line 140
    iput-object p4, p0, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;)I
    .locals 3
    .parameter "log2"

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v2

    .line 151
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 149
    const/4 v0, -0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mData:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    check-cast p1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->compareTo(Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;)I

    move-result v0

    return v0
.end method
