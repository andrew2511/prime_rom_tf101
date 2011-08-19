.class Lcom/newspaperdirect/pressreader/android/LocalStore$25;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->getIssuesDates(Ljava/util/List;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

.field private final synthetic val$issueActivationDateFormat:Ljava/text/SimpleDateFormat;

.field private final synthetic val$issueDateFormat:Ljava/text/SimpleDateFormat;

.field private final synthetic val$newspapers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->val$newspapers:Ljava/util/List;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->val$issueDateFormat:Ljava/text/SimpleDateFormat;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->val$issueActivationDateFormat:Ljava/text/SimpleDateFormat;

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attributes"

    .prologue
    .line 1730
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->val$newspapers:Ljava/util/List;

    const-string v4, "cid"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$47(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v1

    .line 1732
    .local v1, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->val$issueDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "date"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    :try_start_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$25;->val$issueActivationDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "activated"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueActivationDate:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1743
    :goto_0
    return-void

    .line 1733
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1734
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 1739
    .end local v0           #e:Ljava/text/ParseException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1740
    .restart local v0       #e:Ljava/text/ParseException;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueActivationDate:Ljava/util/Date;

    .line 1741
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
