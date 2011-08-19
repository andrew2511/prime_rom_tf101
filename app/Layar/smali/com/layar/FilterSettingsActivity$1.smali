.class Lcom/layar/FilterSettingsActivity$1;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 232
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v8, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    .line 233
    .local v1, filters:[Lcom/layar/data/Filter;
    const/4 v4, -0x1

    .line 235
    .local v4, radarScope:I
    array-length v5, v1

    .line 237
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_4

    .line 272
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/FilterSettingsActivity;->access$4(Lcom/layar/FilterSettingsActivity;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 273
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    iput-boolean v10, v8, Lcom/layar/data/layer/Layer20;->poiUpdatesEnabled:Z

    .line 274
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v8, v10, v12}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    .line 280
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/FilterSettingsActivity;->access$1(Lcom/layar/FilterSettingsActivity;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/FilterSettingsActivity;->access$5(Lcom/layar/FilterSettingsActivity;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 281
    :cond_1
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v9, v9, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v8, v9}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 282
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v9, v9, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v8, v9}, Lcom/layar/data/layer/LayerManager;->updateBookmark(Lcom/layar/data/layer/Layer20;)V

    .line 285
    :cond_2
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/FilterSettingsActivity;->access$4(Lcom/layar/FilterSettingsActivity;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 286
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    .line 289
    :cond_3
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Lcom/layar/FilterSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 290
    .local v3, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/FilterSettingsActivity;->access$6(Lcom/layar/FilterSettingsActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v3, v8, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 292
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-virtual {v8}, Lcom/layar/FilterSettingsActivity;->finish()V

    .line 293
    return-void

    .line 239
    .end local v3           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    aget-object v8, v1, v2

    sget-object v9, Lcom/layar/data/Filter;->GEO_FILTER:Lcom/layar/data/Filter;

    if-eq v8, v9, :cond_5

    .line 240
    aget-object v8, v1, v2

    sget-object v9, Lcom/layar/data/Filter;->RADIUS_FILTER:Lcom/layar/data/Filter;

    if-eq v8, v9, :cond_5

    .line 241
    aget-object v8, v1, v2

    sget-object v9, Lcom/layar/data/Filter;->KEYWORD_FILTER:Lcom/layar/data/Filter;

    if-ne v8, v9, :cond_6

    .line 237
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_6
    :try_start_0
    aget-object v8, v1, v2

    iget-object v0, v8, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .line 246
    .local v0, filterDetails:Lorg/json/JSONObject;
    const-string v8, "type"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, type:Ljava/lang/String;
    const-string v8, "SEARCHBOX"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 248
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$0(Lcom/layar/FilterSettingsActivity;)[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-interface {v9, v0}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$1(Lcom/layar/FilterSettingsActivity;)Z

    move-result v9

    if-nez v9, :cond_7

    move v9, v11

    :goto_3
    invoke-static {v8, v9}, Lcom/layar/FilterSettingsActivity;->access$2(Lcom/layar/FilterSettingsActivity;Z)V

    goto :goto_2

    .line 265
    .end local v0           #filterDetails:Lorg/json/JSONObject;
    .end local v6           #type:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2

    .restart local v0       #filterDetails:Lorg/json/JSONObject;
    .restart local v6       #type:Ljava/lang/String;
    :cond_7
    move v9, v10

    .line 248
    goto :goto_3

    .line 249
    :cond_8
    const-string v8, "RADIOLIST"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 250
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$0(Lcom/layar/FilterSettingsActivity;)[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-interface {v9, v0}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$1(Lcom/layar/FilterSettingsActivity;)Z

    move-result v9

    if-nez v9, :cond_9

    move v9, v11

    :goto_4
    invoke-static {v8, v9}, Lcom/layar/FilterSettingsActivity;->access$2(Lcom/layar/FilterSettingsActivity;Z)V

    goto :goto_2

    :cond_9
    move v9, v10

    goto :goto_4

    .line 251
    :cond_a
    const-string v8, "CUSTOM_SLIDER"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 252
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$0(Lcom/layar/FilterSettingsActivity;)[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-interface {v9, v0}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$1(Lcom/layar/FilterSettingsActivity;)Z

    move-result v9

    if-nez v9, :cond_b

    move v9, v11

    :goto_5
    invoke-static {v8, v9}, Lcom/layar/FilterSettingsActivity;->access$2(Lcom/layar/FilterSettingsActivity;Z)V

    goto/16 :goto_2

    :cond_b
    move v9, v10

    goto :goto_5

    .line 253
    :cond_c
    const-string v8, "CHECKBOXLIST"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 254
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$0(Lcom/layar/FilterSettingsActivity;)[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-interface {v9, v0}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$1(Lcom/layar/FilterSettingsActivity;)Z

    move-result v9

    if-nez v9, :cond_d

    move v9, v11

    :goto_6
    invoke-static {v8, v9}, Lcom/layar/FilterSettingsActivity;->access$2(Lcom/layar/FilterSettingsActivity;Z)V

    goto/16 :goto_2

    :cond_d
    move v9, v10

    goto :goto_6

    .line 255
    :cond_e
    const-string v8, "RANGE_SLIDER"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 256
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v9}, Lcom/layar/FilterSettingsActivity;->access$0(Lcom/layar/FilterSettingsActivity;)[Lcom/layar/FilterSettingsActivity$FilterUIControl;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-interface {v9, v0}, Lcom/layar/FilterSettingsActivity$FilterUIControl;->saveValue(Lorg/json/JSONObject;)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/layar/FilterSettingsActivity;->access$3(Lcom/layar/FilterSettingsActivity;Z)V

    .line 257
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    .line 258
    const-string v8, "value"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 259
    .local v7, value:I
    move v4, v7

    .line 260
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->layer:Lcom/layar/data/layer/Layer20;

    iput v4, v8, Lcom/layar/data/layer/Layer20;->scope:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 275
    .end local v0           #filterDetails:Lorg/json/JSONObject;
    .end local v6           #type:Ljava/lang/String;
    .end local v7           #value:I
    :cond_f
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/FilterSettingsActivity;->access$1(Lcom/layar/FilterSettingsActivity;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 276
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v8, v10, v12}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_10
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    invoke-static {v8}, Lcom/layar/FilterSettingsActivity;->access$5(Lcom/layar/FilterSettingsActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 278
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$1;->this$0:Lcom/layar/FilterSettingsActivity;

    iget-object v8, v8, Lcom/layar/FilterSettingsActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v8, v10, v12}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    goto/16 :goto_1
.end method
