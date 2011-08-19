.class Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$2;
.super Ljava/lang/Object;
.source "HttpRequestHelper.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;I)V

    .line 104
    return-void
.end method
