.class Lcom/newspaperdirect/pressreader/android/core/PRRequests$5;
.super Ljava/lang/Object;
.source "PRRequests.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PRRequests;->requestConfirmedBackIssue(Ljava/lang/String;Ljava/util/Date;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$message:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$5;->val$result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$5;->val$message:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 130
    const-string v1, "result"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, attr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$5;->val$result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$5;->val$message:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const-string v2, "result-full-description"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 134
    return-void
.end method
