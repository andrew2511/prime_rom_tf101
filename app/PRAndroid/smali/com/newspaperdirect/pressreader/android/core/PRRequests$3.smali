.class Lcom/newspaperdirect/pressreader/android/core/PRRequests$3;
.super Ljava/lang/Object;
.source "PRRequests.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PRRequests;->getIssueDates(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$format:Ljava/text/SimpleDateFormat;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$3;->val$result:Ljava/util/List;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$3;->val$format:Ljava/text/SimpleDateFormat;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$3;->val$result:Ljava/util/List;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests$3;->val$format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method
