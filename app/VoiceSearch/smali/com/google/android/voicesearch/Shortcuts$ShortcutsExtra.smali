.class Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
.super Ljava/lang/Object;
.source "Shortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/Shortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutsExtra"
.end annotation


# static fields
.field private static final COMPONENT_KEY:Ljava/lang/String; = "json_component_key"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    .line 204
    iput-object p1, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Landroid/os/Bundle;Lcom/google/android/voicesearch/Shortcuts$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;-><init>(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bundleFromString(Ljava/lang/String;)Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v0, "json_component_key"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    .line 233
    if-eqz p0, :cond_4

    .line 234
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v2, v0

    .line 236
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 237
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 239
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    instance-of v5, v0, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 241
    check-cast v0, Lorg/json/JSONArray;

    .line 242
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 243
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 244
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 246
    :cond_0
    invoke-virtual {v3, p0, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_1
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 248
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_2
    const-string v0, "Shortcuts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON contains an unexpected value with key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    :cond_3
    new-instance v0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;

    invoke-direct {v0, v2, v3}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;-><init>(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-object v0

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public convertToString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "json_component_key"

    iget-object v1, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 216
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 217
    :cond_2
    instance-of v4, v1, [Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 218
    new-instance v4, Lorg/json/JSONArray;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method
