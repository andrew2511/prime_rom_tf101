.class public final Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregationSuggestionParameter"
.end annotation


# instance fields
.field public final kind:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "kind"
    .parameter "value"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->kind:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    .line 170
    return-void
.end method
