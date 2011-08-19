.class Lcom/amazon/kcp/reader/ReaderActivity$4;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$4;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$4;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->access$000(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/String;)V

    .line 183
    return-void
.end method
