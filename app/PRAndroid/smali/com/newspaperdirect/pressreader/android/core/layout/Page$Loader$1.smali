.class Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

.field private final synthetic val$articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

.field private final synthetic val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->val$articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attributes"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 151
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->val$issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V

    .line 152
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    const-string v3, "number"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Page;I)V

    .line 153
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    const-string v3, "section"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    const-string v3, "rect"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->create(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V

    .line 156
    const-string v2, "zoom_scales"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, zooms:[Ljava/lang/String;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    array-length v3, v1

    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Page;[I)V

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->val$articles:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->setPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 161
    return-void

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->access$7(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)[I

    move-result-object v2

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
