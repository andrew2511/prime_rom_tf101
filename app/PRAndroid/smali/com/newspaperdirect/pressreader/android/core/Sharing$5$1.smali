.class Lcom/newspaperdirect/pressreader/android/core/Sharing$5$1;
.super Ljava/lang/Object;
.source "Sharing.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$5;

.field private final synthetic val$result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$5;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$5;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$5$1;->val$result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    goto :goto_0
.end method
