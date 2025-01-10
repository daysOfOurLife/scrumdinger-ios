//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by Victor Nguyen on 1/9/25.
//

import SwiftUI

struct MeetingView: View {
    // MARK: Body

    var body: some View {
        VStack {
            progressBar

            Spacer()

            progressCircle

            Spacer()

            speakerInfoFooter
        }
    }

    // MARK: Subviews

    private var progressBar: some View {
        VStack {
            ProgressView(value: 15, total: 100)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }

                Spacer()

                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes remaining")
        }
    }

    private var progressCircle: some View {
        Circle()
            .stroke(lineWidth: 24)
    }

    private var speakerInfoFooter: some View {
        HStack {
            Text("Speaker 1 of 3")

            Spacer()

            Button {
                // TODO: Do something
            } label: {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }
    }
}

#Preview {
    MeetingView()
}
