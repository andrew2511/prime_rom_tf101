.class public interface abstract Lcom/google/android/music/store/Schema$SyncColumns;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncColumns"
.end annotation


# static fields
.field public static final DIRTY:Ljava/lang/String; = "_sync_dirty"

.field public static final DIRTY_VALUE_OFF:I = 0x0

.field public static final DIRTY_VALUE_ON:I = 0x1

.field public static final SOURCE_ACCOUNT:Ljava/lang/String; = "SourceAccount"

.field public static final SOURCE_ID:Ljava/lang/String; = "SourceId"

.field public static final SOURCE_VERSION:Ljava/lang/String; = "_sync_version"
