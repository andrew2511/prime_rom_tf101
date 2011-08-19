.class Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;
.super Ljava/lang/Object;
.source "Issue.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->loadFromFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

.field private final synthetic val$format:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->val$format:Ljava/text/SimpleDateFormat;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    const-string v1, "ID"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    const-string v1, "title"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    const-string v1, "language"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;)V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->val$format:Ljava/text/SimpleDateFormat;

    const-string v2, "date"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    const-string v1, "version"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;I)V

    .line 120
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method
