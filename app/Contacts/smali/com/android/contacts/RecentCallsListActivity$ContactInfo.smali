.class final Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
.super Ljava/lang/Object;
.source "RecentCallsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContactInfo"
.end annotation


# static fields
.field public static EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;


# instance fields
.field public formattedNumber:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public personId:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    invoke-direct {v0}, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;-><init>()V

    sput-object v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
