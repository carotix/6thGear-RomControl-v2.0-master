.class Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature$1;
.super Ljava/lang/Object;
.source "BatteryTemperature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;


# direct methods
.method constructor <init>(Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;

    # getter for: Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;->isCelcius:Z
    invoke-static {v0}, Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;->access$000(Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;->isCelcius:Z
    invoke-static {v0, v1}, Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;->access$002(Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;->isCelcius:Z
    invoke-static {v0, v1}, Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;->access$002(Lcom/android/systemui/morningstar/cpufrequency/BatteryTemperature;Z)Z

    goto :goto_0
.end method
