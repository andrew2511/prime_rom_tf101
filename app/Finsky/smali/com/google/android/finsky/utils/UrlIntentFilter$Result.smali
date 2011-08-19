.class public Lcom/google/android/finsky/utils/UrlIntentFilter$Result;
.super Ljava/lang/Object;
.source "UrlIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/UrlIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final corpus:I

.field public final extra:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "corpus"
    .parameter "extra"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->type:I

    .line 35
    iput p2, p0, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->corpus:I

    .line 36
    iput-object p3, p0, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->extra:Ljava/lang/String;

    .line 37
    return-void
.end method
