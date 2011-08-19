.class public interface abstract Lcom/layar/FilterSettingsActivity$FilterUIControl;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilterUIControl"
.end annotation


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUI()Landroid/view/View;
.end method

.method public abstract saveValue(Lorg/json/JSONObject;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
