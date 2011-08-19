.class Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$1;
.super Ljava/lang/Object;
.source "HttpRequestHelper.java"

# interfaces
.implements Landroid/sax/StartElementListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;I)V

    .line 98
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;Ljava/lang/String;)V

    .line 99
    return-void
.end method
