.class Lcom/android/server/PackageManagerService$PreferredActivity;
.super Landroid/content/IntentFilter;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/PreferredComponent$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferredActivity"
.end annotation


# instance fields
.field final mPref:Lcom/android/server/PreferredComponent;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 7813
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 7814
    new-instance v0, Lcom/android/server/PreferredComponent;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/PreferredComponent;-><init>(Lcom/android/server/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    .line 7815
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7818
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 7819
    new-instance v0, Lcom/android/server/PreferredComponent;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PreferredComponent;-><init>(Lcom/android/server/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    .line 7820
    return-void
.end method


# virtual methods
.method public onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 6
    .parameter "tagName"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7831
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7833
    invoke-virtual {p0, p2}, Lcom/android/server/PackageManagerService$PreferredActivity;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7842
    :goto_b
    const/4 v0, 0x1

    return v0

    .line 7837
    :cond_d
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <preferred-activities>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 7840
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 7823
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v0, p1}, Lcom/android/server/PreferredComponent;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 7824
    const-string v0, "filter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7825
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 7826
    const-string v0, "filter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7827
    return-void
.end method
