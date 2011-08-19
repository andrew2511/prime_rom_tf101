.class Lcom/newspaperdirect/pressreader/android/NewOrder$7$1$1;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->updateFavorite(Ljava/lang/String;Z)Z

    .line 197
    return-void
.end method
