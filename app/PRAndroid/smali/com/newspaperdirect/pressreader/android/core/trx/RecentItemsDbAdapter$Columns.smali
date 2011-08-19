.class public final Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter$Columns;
.super Ljava/lang/Object;
.source "RecentItemsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "CID"

.field public static final ISSUE_ID:Ljava/lang/String; = "issue_id"

.field public static final ORDER_DATE:Ljava/lang/String; = "order_date"

.field public static final ORDER_WITH_SUPPLEMENTS:Ljava/lang/String; = "order_with_supplements"

.field public static final PARENT_ISSUE_ID:Ljava/lang/String; = "parent_issue_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
