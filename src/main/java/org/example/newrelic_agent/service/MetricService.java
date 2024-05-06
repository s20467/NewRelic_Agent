package org.example.newrelic_agent.service;

import com.newrelic.api.agent.NewRelic;
import org.springframework.stereotype.Service;

@Service
public class MetricService {

    public void recordCustom(int value) {
        NewRelic.getAgent().getMetricAggregator().recordMetric("Test1", value);
    }
}
