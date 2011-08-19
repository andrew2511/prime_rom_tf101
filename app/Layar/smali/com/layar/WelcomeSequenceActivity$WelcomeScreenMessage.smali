.class Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
.super Ljava/lang/Object;
.source "WelcomeSequenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/WelcomeSequenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WelcomeScreenMessage"
.end annotation


# instance fields
.field public iconId:Ljava/lang/String;

.field public textId:Ljava/lang/String;

.field public titleId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    new-instance v0, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;

    invoke-direct {v0}, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;-><init>()V

    .line 194
    .local v0, result:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    const-string v1, "title"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->titleId:Ljava/lang/String;

    .line 195
    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->textId:Ljava/lang/String;

    .line 196
    const-string v1, "icon"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->iconId:Ljava/lang/String;

    .line 197
    return-object v0
.end method
